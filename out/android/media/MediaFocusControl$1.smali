.class Landroid/media/MediaFocusControl$1;
.super Landroid/telephony/PhoneStateListener;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;)V
    .registers 2

    .prologue
    .line 437
    iput-object p1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 440
    if-ne p1, v0, :cond_13

    .line 442
    # getter for: Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/MediaFocusControl;->access$2300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 443
    :try_start_8
    iget-object v0, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    const/4 v2, 0x1

    # setter for: Landroid/media/MediaFocusControl;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/MediaFocusControl;->access$2402(Landroid/media/MediaFocusControl;Z)Z

    .line 444
    monitor-exit v1

    .line 451
    :cond_f
    :goto_f
    return-void

    .line 444
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0

    .line 445
    :cond_13
    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    if-nez p1, :cond_f

    .line 447
    :cond_18
    # getter for: Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/MediaFocusControl;->access$2300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 448
    :try_start_1d
    iget-object v0, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    const/4 v2, 0x0

    # setter for: Landroid/media/MediaFocusControl;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/MediaFocusControl;->access$2402(Landroid/media/MediaFocusControl;Z)Z

    .line 449
    monitor-exit v1

    goto :goto_f

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_25

    throw v0
.end method
