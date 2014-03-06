.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# instance fields
.field private mBlocked:Z

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:I

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method constructor <init>(Z)V
    .registers 3
    .param p1, "quitAllowed"    # Z

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 106
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 107
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()I

    move-result v0

    iput v0, p0, Landroid/os/MessageQueue;->mPtr:I

    .line 108
    return-void
.end method

.method private dispose()V
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Landroid/os/MessageQueue;->mPtr:I

    if-eqz v0, :cond_c

    .line 123
    iget v0, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {v0}, Landroid/os/MessageQueue;->nativeDestroy(I)V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MessageQueue;->mPtr:I

    .line 126
    :cond_c
    return-void
.end method

.method private isIdlingLocked()Z
    .registers 2

    .prologue
    .line 405
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_e

    iget v0, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {v0}, Landroid/os/MessageQueue;->nativeIsIdling(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static native nativeDestroy(I)V
.end method

.method private static native nativeInit()I
.end method

.method private static native nativeIsIdling(I)Z
.end method

.method private static native nativePollOnce(II)V
.end method

.method private static native nativeWake(I)V
.end method

.method private removeAllFutureMessagesLocked()V
    .registers 7

    .prologue
    .line 520
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 521
    .local v1, "now":J
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 522
    .local v3, "p":Landroid/os/Message;
    if-eqz v3, :cond_11

    .line 523
    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_13

    .line 524
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 545
    :cond_11
    :goto_11
    return-void

    .line 535
    .local v0, "n":Landroid/os/Message;
    :cond_12
    move-object v3, v0

    .line 528
    .end local v0    # "n":Landroid/os/Message;
    :cond_13
    iget-object v0, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 529
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_11

    .line 532
    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_12

    .line 537
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 539
    :cond_20
    move-object v3, v0

    .line 540
    iget-object v0, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 541
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 542
    if-nez v0, :cond_20

    goto :goto_11
.end method

.method private removeAllMessagesLocked()V
    .registers 4

    .prologue
    .line 510
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 511
    .local v1, "p":Landroid/os/Message;
    :goto_2
    if-eqz v1, :cond_b

    .line 512
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 513
    .local v0, "n":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 514
    move-object v1, v0

    .line 515
    goto :goto_2

    .line 516
    .end local v0    # "n":Landroid/os/Message;
    :cond_b
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 517
    return-void
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 84
    if-nez p1, :cond_a

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_a
    monitor-enter p0

    .line 88
    :try_start_b
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit p0

    .line 90
    return-void

    .line 89
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 548
    monitor-enter p0

    .line 549
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 550
    .local v2, "now":J
    const/4 v1, 0x0

    .line 551
    .local v1, "n":I
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v0, "msg":Landroid/os/Message;
    :goto_8
    if-eqz v0, :cond_37

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 553
    add-int/lit8 v1, v1, 0x1

    .line 551
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_8

    .line 555
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(Total messages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", idling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdlingLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", quitting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 557
    monitor-exit p0

    .line 558
    return-void

    .line 557
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "n":I
    .end local v2    # "now":J
    :catchall_73
    move-exception v4

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_73

    throw v4
.end method

.method enqueueMessage(Landroid/os/Message;J)Z
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 311
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 312
    new-instance v4, Landroid/util/AndroidRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " This message is already in use."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 314
    :cond_21
    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_2d

    .line 315
    new-instance v4, Landroid/util/AndroidRuntimeException;

    const-string v5, "Message must have a target."

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 318
    :cond_2d
    monitor-enter p0

    .line 319
    :try_start_2e
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v5, :cond_57

    .line 320
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sending message to a Handler on a dead thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v4, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    monitor-exit p0

    .line 359
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_56
    return v1

    .line 326
    :cond_57
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 327
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 329
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_69

    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-eqz v5, :cond_69

    iget-wide v5, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v5

    if-gez v5, :cond_79

    .line 331
    :cond_69
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 332
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 333
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 355
    .local v1, "needWake":Z
    :goto_6f
    if-eqz v1, :cond_76

    .line 356
    iget v5, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {v5}, Landroid/os/MessageQueue;->nativeWake(I)V

    .line 358
    :cond_76
    monitor-exit p0

    move v1, v4

    .line 359
    goto :goto_56

    .line 338
    .end local v1    # "needWake":Z
    :cond_79
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v5, :cond_88

    iget-object v5, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_88

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v5

    if-eqz v5, :cond_88

    move v1, v4

    .line 341
    .restart local v1    # "needWake":Z
    :cond_88
    :goto_88
    move-object v3, v2

    .line 342
    .local v3, "prev":Landroid/os/Message;
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 343
    if-eqz v2, :cond_93

    iget-wide v5, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v5

    if-gez v5, :cond_9b

    .line 350
    :cond_93
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 351
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_6f

    .line 358
    .end local v1    # "needWake":Z
    .end local v2    # "p":Landroid/os/Message;
    .end local v3    # "prev":Landroid/os/Message;
    :catchall_98
    move-exception v4

    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_2e .. :try_end_9a} :catchall_98

    throw v4

    .line 346
    .restart local v1    # "needWake":Z
    .restart local v2    # "p":Landroid/os/Message;
    .restart local v3    # "prev":Landroid/os/Message;
    :cond_9b
    if-eqz v1, :cond_88

    :try_start_9d
    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_98

    move-result v5

    if-eqz v5, :cond_88

    .line 347
    const/4 v1, 0x0

    goto :goto_88
.end method

.method enqueueSyncBarrier(J)I
    .registers 9
    .param p1, "when"    # J

    .prologue
    .line 253
    monitor-enter p0

    .line 254
    :try_start_1
    iget v3, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 255
    .local v3, "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 256
    .local v0, "msg":Landroid/os/Message;
    iput-wide p1, v0, Landroid/os/Message;->when:J

    .line 257
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 259
    const/4 v2, 0x0

    .line 260
    .local v2, "prev":Landroid/os/Message;
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 261
    .local v1, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_24

    .line 262
    :goto_18
    if-eqz v1, :cond_24

    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_24

    .line 263
    move-object v2, v1

    .line 264
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_18

    .line 267
    :cond_24
    if-eqz v2, :cond_2c

    .line 268
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 269
    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 274
    :goto_2a
    monitor-exit p0

    return v3

    .line 271
    :cond_2c
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 272
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_2a

    .line 275
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v2    # "prev":Landroid/os/Message;
    .end local v3    # "token":I
    :catchall_31
    move-exception v4

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_31

    throw v4
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 115
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 117
    return-void

    .line 115
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 363
    if-nez p1, :cond_4

    .line 375
    :goto_3
    return v1

    .line 367
    :cond_4
    monitor-enter p0

    .line 368
    :try_start_5
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 369
    .local v0, "p":Landroid/os/Message;
    :goto_7
    if-eqz v0, :cond_20

    .line 370
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_1d

    iget v2, v0, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_1d

    if-eqz p3, :cond_17

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_1d

    .line 371
    :cond_17
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_3

    .line 376
    .end local v0    # "p":Landroid/os/Message;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1

    .line 373
    .restart local v0    # "p":Landroid/os/Message;
    :cond_1d
    :try_start_1d
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_7

    .line 375
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1a

    goto :goto_3
.end method

.method hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 380
    if-nez p1, :cond_4

    .line 392
    :goto_3
    return v1

    .line 384
    :cond_4
    monitor-enter p0

    .line 385
    :try_start_5
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 386
    .local v0, "p":Landroid/os/Message;
    :goto_7
    if-eqz v0, :cond_20

    .line 387
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_1d

    iget-object v2, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_1d

    if-eqz p3, :cond_17

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_1d

    .line 388
    :cond_17
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_3

    .line 393
    .end local v0    # "p":Landroid/os/Message;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1

    .line 390
    .restart local v0    # "p":Landroid/os/Message;
    :cond_1d
    :try_start_1d
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_7

    .line 392
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1a

    goto :goto_3
.end method

.method isIdling()Z
    .registers 2

    .prologue
    .line 397
    monitor-enter p0

    .line 398
    :try_start_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdlingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 399
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method next()Landroid/os/Message;
    .registers 15

    .prologue
    .line 129
    const/4 v7, -0x1

    .line 130
    .local v7, "pendingIdleHandlerCount":I
    const/4 v4, 0x0

    .line 132
    .local v4, "nextPollTimeoutMillis":I
    :goto_2
    if-eqz v4, :cond_7

    .line 133
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 138
    :cond_7
    iget v10, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {v10, v4}, Landroid/os/MessageQueue;->nativePollOnce(II)V

    .line 140
    monitor-enter p0

    .line 142
    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 143
    .local v5, "now":J
    const/4 v8, 0x0

    .line 144
    .local v8, "prevMsg":Landroid/os/Message;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 145
    .local v3, "msg":Landroid/os/Message;
    if-eqz v3, :cond_25

    iget-object v10, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v10, :cond_25

    .line 148
    :cond_1a
    move-object v8, v3

    .line 149
    iget-object v3, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 150
    if-eqz v3, :cond_25

    invoke-virtual {v3}, Landroid/os/Message;->isAsynchronous()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 152
    :cond_25
    if-eqz v3, :cond_5b

    .line 153
    iget-wide v10, v3, Landroid/os/Message;->when:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_42

    .line 155
    iget-wide v10, v3, Landroid/os/Message;->when:J

    sub-long/2addr v10, v5

    const-wide/32 v12, 0x7fffffff

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v4, v10

    .line 175
    :goto_38
    iget-boolean v10, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v10, :cond_5d

    .line 176
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V

    .line 177
    const/4 v3, 0x0

    monitor-exit p0

    .end local v3    # "msg":Landroid/os/Message;
    :goto_41
    return-object v3

    .line 158
    .restart local v3    # "msg":Landroid/os/Message;
    :cond_42
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 159
    if-eqz v8, :cond_56

    .line 160
    iget-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v10, v8, Landroid/os/Message;->next:Landroid/os/Message;

    .line 164
    :goto_4b
    const/4 v10, 0x0

    iput-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 166
    invoke-virtual {v3}, Landroid/os/Message;->markInUse()V

    .line 167
    monitor-exit p0

    goto :goto_41

    .line 197
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "now":J
    .end local v8    # "prevMsg":Landroid/os/Message;
    :catchall_53
    move-exception v10

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_d .. :try_end_55} :catchall_53

    throw v10

    .line 162
    .restart local v3    # "msg":Landroid/os/Message;
    .restart local v5    # "now":J
    .restart local v8    # "prevMsg":Landroid/os/Message;
    :cond_56
    :try_start_56
    iget-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_4b

    .line 171
    :cond_5b
    const/4 v4, -0x1

    goto :goto_38

    .line 183
    :cond_5d
    if-gez v7, :cond_71

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v10, :cond_6b

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v10, v10, Landroid/os/Message;->when:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_71

    .line 185
    :cond_6b
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 187
    :cond_71
    if-gtz v7, :cond_78

    .line 189
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 190
    monitor-exit p0

    goto :goto_2

    .line 193
    :cond_78
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v10, :cond_85

    .line 194
    const/4 v10, 0x4

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 196
    :cond_85
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 197
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_56 .. :try_end_92} :catchall_53

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_93
    if-ge v0, v7, :cond_bb

    .line 202
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v1, v10, v0

    .line 203
    .local v1, "idler":Landroid/os/MessageQueue$IdleHandler;
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v11, 0x0

    aput-object v11, v10, v0

    .line 205
    const/4 v2, 0x0

    .line 207
    .local v2, "keep":Z
    :try_start_9f
    invoke-interface {v1}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_af

    move-result v2

    .line 212
    :goto_a3
    if-nez v2, :cond_ac

    .line 213
    monitor-enter p0

    .line 214
    :try_start_a6
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    monitor-exit p0
    :try_end_ac
    .catchall {:try_start_a6 .. :try_end_ac} :catchall_b8

    .line 201
    :cond_ac
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 208
    :catch_af
    move-exception v9

    .line 209
    .local v9, "t":Ljava/lang/Throwable;
    const-string v10, "MessageQueue"

    const-string v11, "IdleHandler threw exception"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a3

    .line 215
    .end local v9    # "t":Ljava/lang/Throwable;
    :catchall_b8
    move-exception v10

    :try_start_b9
    monitor-exit p0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v10

    .line 220
    .end local v1    # "idler":Landroid/os/MessageQueue$IdleHandler;
    .end local v2    # "keep":Z
    :cond_bb
    const/4 v7, 0x0

    .line 224
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method quit(Z)V
    .registers 4
    .param p1, "safe"    # Z

    .prologue
    .line 229
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v0, :cond_c

    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_c
    monitor-enter p0

    .line 234
    :try_start_d
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_13

    .line 235
    monitor-exit p0

    .line 248
    :goto_12
    return-void

    .line 237
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 239
    if-eqz p1, :cond_25

    .line 240
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    .line 246
    :goto_1b
    iget v0, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {v0}, Landroid/os/MessageQueue;->nativeWake(I)V

    .line 247
    monitor-exit p0

    goto :goto_12

    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_22

    throw v0

    .line 242
    :cond_25
    :try_start_25
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    goto :goto_1b
.end method

.method removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 477
    if-nez p1, :cond_3

    .line 507
    :goto_2
    return-void

    .line 481
    :cond_3
    monitor-enter p0

    .line 482
    :try_start_4
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 486
    .local v2, "p":Landroid/os/Message;
    :goto_6
    if-eqz v2, :cond_1b

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_1b

    if-eqz p2, :cond_12

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_1b

    .line 487
    :cond_12
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 488
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 489
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 490
    move-object v2, v0

    .line 491
    goto :goto_6

    .line 494
    .end local v0    # "n":Landroid/os/Message;
    :cond_1b
    :goto_1b
    if-eqz v2, :cond_38

    .line 495
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 496
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_36

    .line 497
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_36

    if-eqz p2, :cond_2b

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_36

    .line 498
    :cond_2b
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 499
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 500
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1b

    .line 506
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_33
    move-exception v3

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_33

    throw v3

    .line 504
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_36
    move-object v2, v0

    .line 505
    goto :goto_1b

    .line 506
    .end local v0    # "n":Landroid/os/Message;
    :cond_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_33

    goto :goto_2
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 102
    monitor-exit p0

    .line 103
    return-void

    .line 102
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 8
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 409
    if-nez p1, :cond_3

    .line 440
    :goto_2
    return-void

    .line 413
    :cond_3
    monitor-enter p0

    .line 414
    :try_start_4
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 418
    .local v2, "p":Landroid/os/Message;
    :goto_6
    if-eqz v2, :cond_1f

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_1f

    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_1f

    if-eqz p3, :cond_16

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_1f

    .line 419
    :cond_16
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 420
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 421
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 422
    move-object v2, v0

    .line 423
    goto :goto_6

    .line 426
    .end local v0    # "n":Landroid/os/Message;
    :cond_1f
    :goto_1f
    if-eqz v2, :cond_40

    .line 427
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 428
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_3e

    .line 429
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3e

    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_3e

    if-eqz p3, :cond_33

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_3e

    .line 431
    :cond_33
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 432
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 433
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1f

    .line 439
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_3b
    move-exception v3

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_3b

    throw v3

    .line 437
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_3e
    move-object v2, v0

    .line 438
    goto :goto_1f

    .line 439
    .end local v0    # "n":Landroid/os/Message;
    :cond_40
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3b

    goto :goto_2
.end method

.method removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 8
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 443
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 474
    :cond_4
    :goto_4
    return-void

    .line 447
    :cond_5
    monitor-enter p0

    .line 448
    :try_start_6
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 452
    .local v2, "p":Landroid/os/Message;
    :goto_8
    if-eqz v2, :cond_21

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_21

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_21

    if-eqz p3, :cond_18

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_21

    .line 453
    :cond_18
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 454
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 455
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 456
    move-object v2, v0

    .line 457
    goto :goto_8

    .line 460
    .end local v0    # "n":Landroid/os/Message;
    :cond_21
    :goto_21
    if-eqz v2, :cond_42

    .line 461
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 462
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_40

    .line 463
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_40

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_40

    if-eqz p3, :cond_35

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_40

    .line 465
    :cond_35
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 466
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 467
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_21

    .line 473
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_3d
    move-exception v3

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_3d

    throw v3

    .line 471
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_40
    move-object v2, v0

    .line 472
    goto :goto_21

    .line 473
    .end local v0    # "n":Landroid/os/Message;
    :cond_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3d

    goto :goto_4
.end method

.method removeSyncBarrier(I)V
    .registers 7
    .param p1, "token"    # I

    .prologue
    .line 281
    monitor-enter p0

    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, "prev":Landroid/os/Message;
    :try_start_2
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 284
    .local v1, "p":Landroid/os/Message;
    :goto_4
    if-eqz v1, :cond_12

    iget-object v3, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_e

    iget v3, v1, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_12

    .line 285
    :cond_e
    move-object v2, v1

    .line 286
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_4

    .line 288
    :cond_12
    if-nez v1, :cond_1f

    .line 289
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 307
    .end local v1    # "p":Landroid/os/Message;
    :catchall_1c
    move-exception v3

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_1c

    throw v3

    .line 293
    .restart local v1    # "p":Landroid/os/Message;
    :cond_1f
    if-eqz v2, :cond_36

    .line 294
    :try_start_21
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 295
    const/4 v0, 0x0

    .line 300
    .local v0, "needWake":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 304
    if-eqz v0, :cond_34

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v3, :cond_34

    .line 305
    iget v3, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {v3}, Landroid/os/MessageQueue;->nativeWake(I)V

    .line 307
    :cond_34
    monitor-exit p0

    .line 308
    return-void

    .line 297
    .end local v0    # "needWake":Z
    :cond_36
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 298
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->target:Landroid/os/Handler;
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_1c

    if-eqz v3, :cond_46

    :cond_44
    const/4 v0, 0x1

    .restart local v0    # "needWake":Z
    :goto_45
    goto :goto_26

    .end local v0    # "needWake":Z
    :cond_46
    const/4 v0, 0x0

    goto :goto_45
.end method
