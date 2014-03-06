.class Landroid/media/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2

    .prologue
    .line 3244
    iput-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # Landroid/media/AudioService$1;

    .prologue
    .line 3244
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;-><init>(Landroid/media/AudioService;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/media/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$AudioHandler;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 3244
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 3511
    if-eqz p1, :cond_8

    .line 3513
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 3514
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_8} :catch_9

    .line 3519
    :cond_8
    :goto_8
    return-void

    .line 3515
    :catch_9
    move-exception v0

    .line 3516
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private onLoadSoundEffects()Z
    .registers 18

    .prologue
    .line 3313
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v11}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 3314
    :try_start_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v11}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Z

    move-result v11

    if-nez v11, :cond_1e

    .line 3315
    const-string v11, "AudioService"

    const-string/jumbo v13, "onLoadSoundEffects() called before boot complete"

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    const/4 v11, 0x0

    monitor-exit v12

    .line 3425
    :goto_1d
    return v11

    .line 3319
    :cond_1e
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v11}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v11

    if-eqz v11, :cond_2e

    .line 3320
    const/4 v11, 0x1

    monitor-exit v12

    goto :goto_1d

    .line 3424
    :catchall_2b
    move-exception v11

    monitor-exit v12
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2b

    throw v11

    .line 3323
    :cond_2e
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->loadTouchSoundAssets()V
    invoke-static {v11}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)V

    .line 3325
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    new-instance v13, Landroid/media/SoundPool;

    const/4 v14, 0x4

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Landroid/media/SoundPool;-><init>(III)V

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 3326
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v13, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$1602(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;

    .line 3327
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    new-instance v13, Landroid/media/AudioService$SoundPoolListenerThread;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {v13, v14}, Landroid/media/AudioService$SoundPoolListenerThread;-><init>(Landroid/media/AudioService;)V

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$4802(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 3328
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v11}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolListenerThread;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/AudioService$SoundPoolListenerThread;->start()V

    .line 3329
    const/4 v1, 0x3

    .local v1, "attempts":I
    move v2, v1

    .line 3330
    .end local v1    # "attempts":I
    .local v2, "attempts":I
    :goto_6a
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v11}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    :try_end_71
    .catchall {:try_start_2e .. :try_end_71} :catchall_2b

    move-result-object v11

    if-nez v11, :cond_91

    add-int/lit8 v1, v2, -0x1

    .end local v2    # "attempts":I
    .restart local v1    # "attempts":I
    if-lez v2, :cond_92

    .line 3333
    :try_start_78
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v11}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v11

    const-wide/16 v13, 0x1388

    invoke-virtual {v11, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_78 .. :try_end_85} :catch_87
    .catchall {:try_start_78 .. :try_end_85} :catchall_2b

    move v2, v1

    .line 3336
    .end local v1    # "attempts":I
    .restart local v2    # "attempts":I
    goto :goto_6a

    .line 3334
    .end local v2    # "attempts":I
    .restart local v1    # "attempts":I
    :catch_87
    move-exception v3

    .line 3335
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_88
    const-string v11, "AudioService"

    const-string v13, "Interrupted while waiting sound pool listener thread."

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 3336
    .end local v1    # "attempts":I
    .restart local v2    # "attempts":I
    goto :goto_6a

    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_91
    move v1, v2

    .line 3339
    .end local v2    # "attempts":I
    .restart local v1    # "attempts":I
    :cond_92
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v11}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v11

    if-nez v11, :cond_e0

    .line 3340
    const-string v11, "AudioService"

    const-string/jumbo v13, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v11}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v11

    if-eqz v11, :cond_c1

    .line 3342
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v11}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Looper;->quit()V

    .line 3343
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v13, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$1302(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 3345
    :cond_c1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v13, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$4802(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 3346
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v11}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/SoundPool;->release()V

    .line 3347
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v13, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 3348
    const/4 v11, 0x0

    monitor-exit v12

    goto/16 :goto_1d

    .line 3356
    :cond_e0
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$4900()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v8, v11, [I

    .line 3357
    .local v8, "poolId":[I
    const/4 v5, 0x0

    .local v5, "fileIdx":I
    :goto_eb
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$4900()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_fb

    .line 3358
    const/4 v11, -0x1

    aput v11, v8, v5

    .line 3357
    add-int/lit8 v5, v5, 0x1

    goto :goto_eb

    .line 3366
    :cond_fb
    const/4 v7, 0x0

    .line 3367
    .local v7, "numSamples":I
    const/4 v4, 0x0

    .local v4, "effect":I
    :goto_fd
    const/16 v11, 0xa

    if-ge v4, v11, :cond_1bd

    .line 3369
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v4

    const/4 v13, 0x1

    aget v11, v11, v13

    if-nez v11, :cond_113

    .line 3367
    :goto_110
    add-int/lit8 v4, v4, 0x1

    goto :goto_fd

    .line 3372
    :cond_113
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v4

    const/4 v13, 0x0

    aget v11, v11, v13

    aget v11, v8, v11

    const/4 v13, -0x1

    if-ne v11, v13, :cond_19f

    .line 3373
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/media/audio/ui/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$4900()Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v14}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v14

    aget-object v14, v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3376
    .local v6, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v11}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v6, v13}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v9

    .line 3377
    .local v9, "sampleId":I
    if-gtz v9, :cond_17f

    .line 3378
    const-string v11, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Soundpool could not load file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_110

    .line 3380
    :cond_17f
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v4

    const/4 v13, 0x1

    aput v9, v11, v13

    .line 3381
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v4

    const/4 v13, 0x0

    aget v11, v11, v13

    aput v9, v8, v11

    .line 3382
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_110

    .line 3385
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v9    # "sampleId":I
    :cond_19f
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v4

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v14}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v14

    aget-object v14, v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    aget v14, v8, v14

    aput v14, v11, v13

    goto/16 :goto_110

    .line 3390
    :cond_1bd
    if-lez v7, :cond_1f9

    .line 3391
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v11}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/media/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_1ca
    .catchall {:try_start_88 .. :try_end_1ca} :catchall_2b

    .line 3393
    const/4 v1, 0x3

    .line 3394
    const/4 v10, 0x1

    .local v10, "status":I
    move v2, v1

    .line 3395
    .end local v1    # "attempts":I
    .restart local v2    # "attempts":I
    :goto_1cd
    const/4 v11, 0x1

    if-ne v10, v11, :cond_281

    add-int/lit8 v1, v2, -0x1

    .end local v2    # "attempts":I
    .restart local v1    # "attempts":I
    if-lez v2, :cond_1fa

    .line 3397
    :try_start_1d4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v11}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v11

    const-wide/16 v13, 0x1388

    invoke-virtual {v11, v13, v14}, Ljava/lang/Object;->wait(J)V

    .line 3398
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v11}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/AudioService$SoundPoolCallback;->status()I
    :try_end_1ec
    .catch Ljava/lang/InterruptedException; {:try_start_1d4 .. :try_end_1ec} :catch_1ef
    .catchall {:try_start_1d4 .. :try_end_1ec} :catchall_2b

    move-result v10

    move v2, v1

    .line 3401
    .end local v1    # "attempts":I
    .restart local v2    # "attempts":I
    goto :goto_1cd

    .line 3399
    .end local v2    # "attempts":I
    .restart local v1    # "attempts":I
    :catch_1ef
    move-exception v3

    .line 3400
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    :try_start_1f0
    const-string v11, "AudioService"

    const-string v13, "Interrupted while waiting sound pool callback."

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 3401
    .end local v1    # "attempts":I
    .restart local v2    # "attempts":I
    goto :goto_1cd

    .line 3404
    .end local v2    # "attempts":I
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v10    # "status":I
    .restart local v1    # "attempts":I
    :cond_1f9
    const/4 v10, -0x1

    .line 3407
    .restart local v10    # "status":I
    :cond_1fa
    :goto_1fa
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v11}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v11

    if-eqz v11, :cond_217

    .line 3408
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v11}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Looper;->quit()V

    .line 3409
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v13, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$1302(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 3411
    :cond_217
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v13, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$4802(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 3412
    if-eqz v10, :cond_278

    .line 3413
    const-string v11, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onLoadSoundEffects(), Error "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " while loading samples"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    const/4 v4, 0x0

    :goto_241
    const/16 v11, 0xa

    if-ge v4, v11, :cond_265

    .line 3416
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v4

    const/4 v13, 0x1

    aget v11, v11, v13

    if-lez v11, :cond_262

    .line 3417
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v4

    const/4 v13, 0x1

    const/4 v14, -0x1

    aput v14, v11, v13

    .line 3415
    :cond_262
    add-int/lit8 v4, v4, 0x1

    goto :goto_241

    .line 3421
    :cond_265
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v11}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/SoundPool;->release()V

    .line 3422
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v13, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 3424
    :cond_278
    monitor-exit v12
    :try_end_279
    .catchall {:try_start_1f0 .. :try_end_279} :catchall_2b

    .line 3425
    if-nez v10, :cond_27e

    const/4 v11, 0x1

    goto/16 :goto_1d

    :cond_27e
    const/4 v11, 0x0

    goto/16 :goto_1d

    .end local v1    # "attempts":I
    .restart local v2    # "attempts":I
    :cond_281
    move v1, v2

    .end local v2    # "attempts":I
    .restart local v1    # "attempts":I
    goto/16 :goto_1fa
.end method

.method private onPersistSafeVolumeState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 3526
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3529
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .registers 14
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 3460
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3462
    :try_start_7
    invoke-direct {p0}, Landroid/media/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 3464
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_14

    .line 3465
    monitor-exit v10

    .line 3508
    :goto_13
    return-void

    .line 3469
    :cond_14
    if-gez p2, :cond_51

    .line 3470
    const-wide/high16 v0, 0x4024000000000000L

    # getter for: Landroid/media/AudioService;->sSoundEffectVolumeDb:I
    invoke-static {}, Landroid/media/AudioService;->access$5100()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41a00000

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v2, v0

    .line 3475
    .local v2, "volFloat":F
    :goto_26
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v0}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_57

    .line 3476
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v1}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v3, 0x1

    aget v1, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 3507
    :goto_4c
    monitor-exit v10

    goto :goto_13

    .end local v2    # "volFloat":F
    :catchall_4e
    move-exception v0

    monitor-exit v10
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_4e

    throw v0

    .line 3472
    :cond_51
    int-to-float v0, p2

    const/high16 v1, 0x447a0000

    div-float v2, v0, v1

    .restart local v2    # "volFloat":F
    goto :goto_26

    .line 3479
    :cond_57
    :try_start_57
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_4e

    .line 3481
    .local v9, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$4900()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3483
    .local v8, "filePath":Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 3484
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3485
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepare()V

    .line 3486
    invoke-virtual {v9, v2}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 3487
    new-instance v0, Landroid/media/AudioService$AudioHandler$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioHandler$1;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3492
    new-instance v0, Landroid/media/AudioService$AudioHandler$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioHandler$2;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 3498
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->start()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_ac} :catch_ad
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_ac} :catch_c7
    .catch Ljava/lang/IllegalStateException; {:try_start_5c .. :try_end_ac} :catch_e2
    .catchall {:try_start_5c .. :try_end_ac} :catchall_4e

    goto :goto_4c

    .line 3499
    .end local v8    # "filePath":Ljava/lang/String;
    :catch_ad
    move-exception v7

    .line 3500
    .local v7, "ex":Ljava/io/IOException;
    :try_start_ae
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IOException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 3501
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_c7
    move-exception v7

    .line 3502
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    .line 3503
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_e2
    move-exception v7

    .line 3504
    .local v7, "ex":Ljava/lang/IllegalStateException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catchall {:try_start_ae .. :try_end_fb} :catchall_4e

    goto/16 :goto_4c
.end method

.method private onUnloadSoundEffects()V
    .registers 8

    .prologue
    .line 3434
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3435
    :try_start_7
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    if-nez v3, :cond_11

    .line 3436
    monitor-exit v4

    .line 3457
    :goto_10
    return-void

    .line 3439
    :cond_11
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$4900()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 3440
    .local v2, "poolId":[I
    const/4 v1, 0x0

    .local v1, "fileIdx":I
    :goto_1c
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$4900()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 3441
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 3440
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 3444
    :cond_2c
    const/4 v0, 0x0

    .local v0, "effect":I
    :goto_2d
    const/16 v3, 0xa

    if-ge v0, v3, :cond_82

    .line 3445
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_41

    .line 3444
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 3448
    :cond_41
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_3e

    .line 3449
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v5}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 3450
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 3451
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_3e

    .line 3456
    .end local v0    # "effect":I
    .end local v1    # "fileIdx":I
    .end local v2    # "poolId":[I
    :catchall_7f
    move-exception v3

    monitor-exit v4
    :try_end_81
    .catchall {:try_start_7 .. :try_end_81} :catchall_7f

    throw v3

    .line 3454
    .restart local v0    # "effect":I
    .restart local v1    # "fileIdx":I
    .restart local v2    # "poolId":[I
    :cond_82
    :try_start_82
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 3455
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 3456
    monitor-exit v4
    :try_end_92
    .catchall {:try_start_82 .. :try_end_92} :catchall_7f

    goto/16 :goto_10
.end method

.method private persistRingerMode(I)V
    .registers 4
    .param p1, "ringerMode"    # I

    .prologue
    .line 3304
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3308
    :goto_8
    return-void

    .line 3307
    :cond_9
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8
.end method

.method private persistVolume(Landroid/media/AudioService$VolumeStreamState;I)V
    .registers 7
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 3294
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3301
    :goto_8
    return-void

    .line 3297
    :cond_9
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_8
.end method

.method private setAllVolumes(Landroid/media/AudioService$VolumeStreamState;)V
    .registers 6
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 3281
    invoke-virtual {p1}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 3284
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 3285
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_9
    if-ltz v1, :cond_2d

    .line 3286
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_2a

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v2}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)[I

    move-result-object v2

    aget v2, v2, v1

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_2a

    .line 3288
    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v2}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 3285
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3291
    :cond_2d
    return-void
.end method

.method private setDeviceVolume(Landroid/media/AudioService$VolumeStreamState;I)V
    .registers 13
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 3249
    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 3252
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 3253
    .local v7, "numStreamTypes":I
    add-int/lit8 v9, v7, -0x1

    .local v9, "streamType":I
    :goto_9
    if-ltz v9, :cond_4c

    .line 3254
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_49

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)[I

    move-result-object v0

    aget v0, v0, v9

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-ne v0, v1, :cond_49

    .line 3258
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v0, v9}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;I)I

    move-result v8

    .line 3259
    .local v8, "streamDevice":I
    if-eq p2, v8, :cond_3e

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_3e

    and-int/lit16 v0, p2, 0x380

    if-eqz v0, :cond_3e

    .line 3261
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v0}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 3263
    :cond_3e
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v0}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 3253
    .end local v8    # "streamDevice":I
    :cond_49
    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 3268
    :cond_4c
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/16 v6, 0x1f4

    move v3, p2

    move-object v5, p1

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3276
    return-void
.end method

.method private setForceUse(II)V
    .registers 3
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 3522
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3523
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3534
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_2fa

    .line 3738
    :cond_7
    :goto_7
    return-void

    .line 3537
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->setDeviceVolume(Landroid/media/AudioService$VolumeStreamState;I)V

    goto :goto_7

    .line 3541
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/AudioService$AudioHandler;->setAllVolumes(Landroid/media/AudioService$VolumeStreamState;)V

    goto :goto_7

    .line 3545
    :sswitch_24
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->persistVolume(Landroid/media/AudioService$VolumeStreamState;I)V

    goto :goto_7

    .line 3549
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3552
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_master"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000

    div-float/2addr v3, v4

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    goto :goto_7

    .line 3559
    :sswitch_56
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3562
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_master_mute"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_7

    .line 3571
    :sswitch_74
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/AudioService$AudioHandler;->persistRingerMode(I)V

    goto :goto_7

    .line 3575
    :sswitch_82
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v1

    if-eqz v1, :cond_a3

    .line 3576
    const-string v1, "AudioService"

    const-string v2, "Media server died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v1}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_7

    .line 3581
    :cond_a3
    const-string v1, "AudioService"

    const-string v2, "Media server started."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    const-string/jumbo v1, "restarting=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3589
    # invokes: Landroid/media/AudioService;->readAndSetLowRamDevice()V
    invoke-static {}, Landroid/media/AudioService;->access$5300()V

    .line 3592
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 3593
    :try_start_bc
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    .line 3594
    .local v16, "set":Ljava/util/Set;
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 3595
    .local v10, "i":Ljava/util/Iterator;
    :goto_cc
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 3596
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 3597
    .local v9, "device":Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_cc

    .line 3602
    .end local v9    # "device":Ljava/util/Map$Entry;
    .end local v10    # "i":Ljava/util/Iterator;
    .end local v16    # "set":Ljava/util/Set;
    :catchall_ed
    move-exception v1

    monitor-exit v2
    :try_end_ef
    .catchall {:try_start_bc .. :try_end_ef} :catchall_ed

    throw v1

    .restart local v10    # "i":Ljava/util/Iterator;
    .restart local v16    # "set":Ljava/util/Set;
    :cond_f0
    :try_start_f0
    monitor-exit v2
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ed

    .line 3604
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$5400(Landroid/media/AudioService;)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 3607
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v2}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3608
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v2}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3609
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v1}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14e

    const/16 v1, 0xb

    :goto_125
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3613
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v12

    .line 3614
    .local v12, "numStreamTypes":I
    add-int/lit8 v18, v12, -0x1

    .local v18, "streamType":I
    :goto_12e
    if-ltz v18, :cond_150

    .line 3615
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v1}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v17, v1, v18

    .line 3616
    .local v17, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const/4 v1, 0x0

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService$VolumeStreamState;->access$5600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    move/from16 v0, v18

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 3618
    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 3614
    add-int/lit8 v18, v18, -0x1

    goto :goto_12e

    .line 3609
    .end local v12    # "numStreamTypes":I
    .end local v17    # "streamState":Landroid/media/AudioService$VolumeStreamState;
    .end local v18    # "streamType":I
    :cond_14e
    const/4 v1, 0x0

    goto :goto_125

    .line 3622
    .restart local v12    # "numStreamTypes":I
    .restart local v18    # "streamType":I
    :cond_150
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Landroid/media/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;IZ)V

    .line 3625
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->restoreMasterVolume()V
    invoke-static {v1}, Landroid/media/AudioService;->access$5800(Landroid/media/AudioService;)V

    .line 3628
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorOrientation:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$5900(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_178

    .line 3629
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->setOrientationForAudioSystem()V
    invoke-static {v1}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)V

    .line 3631
    :cond_178
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorRotation:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$6100(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_189

    .line 3632
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->setRotationForAudioSystem()V
    invoke-static {v1}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)V

    .line 3635
    :cond_189
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioService;->access$6300(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3636
    const/4 v3, 0x1

    :try_start_193
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    const/4 v1, 0x0

    :goto_19e
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3639
    monitor-exit v2
    :try_end_1a2
    .catchall {:try_start_193 .. :try_end_1a2} :catchall_1c7

    .line 3641
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioService;->access$6500(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3642
    const/4 v3, 0x3

    :try_start_1ac
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mDockAudioMediaEnabled:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$6600(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_1ca

    const/16 v1, 0x8

    :goto_1b8
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3645
    monitor-exit v2
    :try_end_1bc
    .catchall {:try_start_1ac .. :try_end_1bc} :catchall_1cc

    .line 3648
    const-string/jumbo v1, "restarting=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3636
    :cond_1c4
    const/16 v1, 0xa

    goto :goto_19e

    .line 3639
    :catchall_1c7
    move-exception v1

    :try_start_1c8
    monitor-exit v2
    :try_end_1c9
    .catchall {:try_start_1c8 .. :try_end_1c9} :catchall_1c7

    throw v1

    .line 3642
    :cond_1ca
    const/4 v1, 0x0

    goto :goto_1b8

    .line 3645
    :catchall_1cc
    move-exception v1

    :try_start_1cd
    monitor-exit v2
    :try_end_1ce
    .catchall {:try_start_1cd .. :try_end_1ce} :catchall_1cc

    throw v1

    .line 3652
    .end local v10    # "i":Ljava/util/Iterator;
    .end local v12    # "numStreamTypes":I
    .end local v16    # "set":Ljava/util/Set;
    .end local v18    # "streamType":I
    :sswitch_1cf
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->onUnloadSoundEffects()V

    goto/16 :goto_7

    .line 3658
    :sswitch_1d4
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v11

    .line 3659
    .local v11, "loaded":Z
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 3660
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/media/AudioService$LoadSoundEffectReply;

    .line 3661
    .local v14, "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    monitor-enter v14

    .line 3662
    if-eqz v11, :cond_1f3

    const/4 v1, 0x0

    :goto_1e8
    :try_start_1e8
    iput v1, v14, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 3663
    invoke-virtual {v14}, Ljava/lang/Object;->notify()V

    .line 3664
    monitor-exit v14

    goto/16 :goto_7

    :catchall_1f0
    move-exception v1

    monitor-exit v14
    :try_end_1f2
    .catchall {:try_start_1e8 .. :try_end_1f2} :catchall_1f0

    throw v1

    .line 3662
    :cond_1f3
    const/4 v1, -0x1

    goto :goto_1e8

    .line 3669
    .end local v11    # "loaded":Z
    .end local v14    # "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    :sswitch_1f5
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    goto/16 :goto_7

    .line 3674
    :sswitch_204
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 3675
    :try_start_20d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v3, v1}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;Ljava/lang/String;)V

    .line 3676
    monitor-exit v2

    goto/16 :goto_7

    :catchall_21d
    move-exception v1

    monitor-exit v2
    :try_end_21f
    .catchall {:try_start_20d .. :try_end_21f} :catchall_21d

    throw v1

    .line 3681
    :sswitch_220
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->setForceUse(II)V

    goto/16 :goto_7

    .line 3685
    :sswitch_22f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v1}, Landroid/media/AudioService;->access$6700(Landroid/media/AudioService;)V

    goto/16 :goto_7

    .line 3689
    :sswitch_238
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    invoke-static {v2, v3, v4, v1}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;IILjava/lang/String;)V

    .line 3690
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 3694
    :sswitch_25a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v1, v3}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 3695
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 3699
    :sswitch_278
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 3700
    .local v8, "N":I
    if-lez v8, :cond_2b0

    .line 3702
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v2, v1, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 3703
    :try_start_28b
    new-instance v15, Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v15, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 3704
    .local v15, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v2
    :try_end_297
    .catchall {:try_start_28b .. :try_end_297} :catchall_2ad

    .line 3705
    :goto_297
    if-lez v8, :cond_2b0

    .line 3706
    add-int/lit8 v8, v8, -0x1

    .line 3707
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v13

    check-cast v13, Landroid/media/IAudioRoutesObserver;

    .line 3709
    .local v13, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_2a7
    invoke-interface {v13, v15}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_2aa
    .catch Landroid/os/RemoteException; {:try_start_2a7 .. :try_end_2aa} :catch_2ab

    goto :goto_297

    .line 3710
    :catch_2ab
    move-exception v1

    goto :goto_297

    .line 3704
    .end local v13    # "obs":Landroid/media/IAudioRoutesObserver;
    .end local v15    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_2ad
    move-exception v1

    :try_start_2ae
    monitor-exit v2
    :try_end_2af
    .catchall {:try_start_2ae .. :try_end_2af} :catchall_2ad

    throw v1

    .line 3714
    :cond_2b0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_7

    .line 3719
    .end local v8    # "N":I
    :sswitch_2bb
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->onCheckMusicActive()V
    invoke-static {v1}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)V

    goto/16 :goto_7

    .line 3723
    :sswitch_2c4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->onSendBecomingNoisyIntent()V
    invoke-static {v1}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)V

    goto/16 :goto_7

    .line 3728
    :sswitch_2cd
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x11

    if-ne v1, v3, :cond_2df

    const/4 v1, 0x1

    :goto_2da
    # invokes: Landroid/media/AudioService;->onConfigureSafeVolume(Z)V
    invoke-static {v2, v1}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;Z)V

    goto/16 :goto_7

    :cond_2df
    const/4 v1, 0x0

    goto :goto_2da

    .line 3731
    :sswitch_2e1
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    goto/16 :goto_7

    .line 3735
    :sswitch_2ec
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onBroadcastScoConnectionState(I)V
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$7400(Landroid/media/AudioService;I)V

    goto/16 :goto_7

    .line 3534
    nop

    :sswitch_data_2fa
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_24
        0x2 -> :sswitch_34
        0x3 -> :sswitch_74
        0x4 -> :sswitch_82
        0x5 -> :sswitch_1f5
        0x6 -> :sswitch_204
        0x7 -> :sswitch_1d4
        0x8 -> :sswitch_220
        0x9 -> :sswitch_22f
        0xa -> :sswitch_18
        0xb -> :sswitch_56
        0xc -> :sswitch_278
        0xd -> :sswitch_220
        0xe -> :sswitch_2bb
        0xf -> :sswitch_2c4
        0x10 -> :sswitch_2cd
        0x11 -> :sswitch_2cd
        0x12 -> :sswitch_2e1
        0x13 -> :sswitch_2ec
        0x14 -> :sswitch_1cf
        0x64 -> :sswitch_238
        0x65 -> :sswitch_25a
    .end sparse-switch
.end method
