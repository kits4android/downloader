.class public Landroid/hardware/camera2/impl/CameraDevice;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Landroid/hardware/camera2/CameraDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;,
        Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
    }
.end annotation


# static fields
.field private static final REQUEST_ID_NONE:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final mCallOnActive:Ljava/lang/Runnable;

.field private final mCallOnBusy:Ljava/lang/Runnable;

.field private final mCallOnClosed:Ljava/lang/Runnable;

.field private final mCallOnDisconnected:Ljava/lang/Runnable;

.field private final mCallOnIdle:Ljava/lang/Runnable;

.field private final mCallOnOpened:Ljava/lang/Runnable;

.field private final mCallOnUnconfigured:Ljava/lang/Runnable;

.field private final mCallbacks:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

.field private final mCameraId:Ljava/lang/String;

.field private final mCaptureListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguredOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceHandler:Landroid/os/Handler;

.field private final mDeviceListener:Landroid/hardware/camera2/CameraDevice$StateListener;

.field private mIdle:Z

.field private final mLock:Ljava/lang/Object;

.field private mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

.field private mRepeatingRequestId:I

.field private final mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateListener;Landroid/os/Handler;)V
    .registers 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/hardware/camera2/CameraDevice$StateListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallbacks:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

    .line 60
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mIdle:Z

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestId:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Landroid/hardware/camera2/impl/CameraDevice$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDevice$1;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnOpened:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Landroid/hardware/camera2/impl/CameraDevice$2;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDevice$2;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnUnconfigured:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Landroid/hardware/camera2/impl/CameraDevice$3;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDevice$3;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnActive:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Landroid/hardware/camera2/impl/CameraDevice$4;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDevice$4;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnBusy:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Landroid/hardware/camera2/impl/CameraDevice$5;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDevice$5;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnClosed:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Landroid/hardware/camera2/impl/CameraDevice$6;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDevice$6;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnIdle:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Landroid/hardware/camera2/impl/CameraDevice$7;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDevice$7;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnDisconnected:Ljava/lang/Runnable;

    .line 132
    if-eqz p1, :cond_63

    if-eqz p2, :cond_63

    if-nez p3, :cond_6b

    .line 133
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_6b
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCameraId:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    .line 137
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    .line 138
    const-string v0, "CameraDevice-%s-JV"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCameraId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->DEBUG:Z

    .line 140
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDevice;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDevice;->isClosed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/hardware/camera2/CameraDevice$StateListener;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDevice;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDevice;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDevice;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDevice;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnDisconnected:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDevice;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDevice;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/camera2/impl/CameraDevice;)Z
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDevice;

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Landroid/hardware/camera2/impl/CameraDevice;)Z
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDevice;

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mIdle:Z

    return v0
.end method

.method static synthetic access$702(Landroid/hardware/camera2/impl/CameraDevice;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDevice;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mIdle:Z

    return p1
.end method

.method static synthetic access$800(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDevice;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnIdle:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDevice;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method private checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 666
    if-nez p1, :cond_15

    .line 667
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 668
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_10

    .line 669
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 672
    :cond_10
    new-instance p1, Landroid/os/Handler;

    .end local p1    # "handler":Landroid/os/Handler;
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 674
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p1    # "handler":Landroid/os/Handler;
    :cond_15
    return-object p1
.end method

.method private checkIfCameraClosed()V
    .registers 3

    .prologue
    .line 678
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-nez v0, :cond_c

    .line 679
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraDevice was already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_c
    return-void
.end method

.method private isClosed()Z
    .registers 3

    .prologue
    .line 684
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 685
    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 686
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method private submitCaptureRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;Z)I
    .registers 10
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "listener"    # Landroid/hardware/camera2/CameraDevice$CaptureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "repeating"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 274
    if-eqz p2, :cond_6

    .line 275
    invoke-direct {p0, p3}, Landroid/hardware/camera2/impl/CameraDevice;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p3

    .line 278
    :cond_6
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 279
    :try_start_9
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDevice;->checkIfCameraClosed()V

    .line 282
    if-eqz p4, :cond_11

    .line 283
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDevice;->stopRepeating()V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_3d

    .line 287
    :cond_11
    :try_start_11
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v2, p1, p4}, Landroid/hardware/camera2/ICameraDeviceUser;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)I
    :try_end_16
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_11 .. :try_end_16} :catch_37
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_40
    .catchall {:try_start_11 .. :try_end_16} :catchall_3d

    move-result v1

    .line 294
    .local v1, "requestId":I
    if-eqz p2, :cond_23

    .line 295
    :try_start_19
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;

    new-instance v4, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;

    invoke-direct {v4, p2, p1, p3, p4}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;-><init>(Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/hardware/camera2/CaptureRequest;Landroid/os/Handler;Z)V

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    :cond_23
    if-eqz p4, :cond_27

    .line 300
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestId:I

    .line 303
    :cond_27
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mIdle:Z

    if-eqz v2, :cond_32

    .line 304
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnActive:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    :cond_32
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mIdle:Z

    .line 308
    monitor-exit v3

    .end local v1    # "requestId":I
    :goto_36
    return v1

    .line 288
    :catch_37
    move-exception v0

    .line 289
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v2

    throw v2

    .line 309
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_19 .. :try_end_3f} :catchall_3d

    throw v2

    .line 290
    :catch_40
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3d

    goto :goto_36
.end method


# virtual methods
.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;)I
    .registers 5
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "listener"    # Landroid/hardware/camera2/CameraDevice$CaptureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDevice;->submitCaptureRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;Z)I

    move-result v0

    return v0
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;)I
    .registers 6
    .param p2, "listener"    # Landroid/hardware/camera2/CameraDevice$CaptureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraDevice$CaptureListener;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 261
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "Capture burst request list is empty, do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v0, -0x1

    return v0

    .line 265
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Burst capture implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 6

    .prologue
    .line 397
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 400
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_c

    .line 401
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraDeviceUser;->disconnect()V
    :try_end_c
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_3 .. :try_end_c} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_2c
    .catchall {:try_start_3 .. :try_end_c} :catchall_29

    .line 409
    :cond_c
    :goto_c
    :try_start_c
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_17

    .line 410
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnClosed:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    :cond_17
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 414
    monitor-exit v2

    .line 415
    return-void

    .line 403
    :catch_1c
    move-exception v0

    .line 404
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "Exception while closing: "

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 414
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_29

    throw v1

    .line 405
    :catch_2c
    move-exception v1

    goto :goto_c
.end method

.method public configureOutputs(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    if-nez p1, :cond_7

    .line 165
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .restart local p1    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :cond_7
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 168
    :try_start_a
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDevice;->checkIfCameraClosed()V

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 171
    .local v0, "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/Surface;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v1, "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDevice;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_45

    .line 175
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDevice;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 176
    .local v6, "streamId":I
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDevice;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    .line 178
    .local v5, "s":Landroid/view/Surface;
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 179
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 181
    :cond_3e
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 224
    .end local v0    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/Surface;>;"
    .end local v1    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "i":I
    .end local v5    # "s":Landroid/view/Surface;
    .end local v6    # "streamId":I
    :catchall_42
    move-exception v7

    monitor-exit v8
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_42

    throw v7

    .line 185
    .restart local v0    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/Surface;>;"
    .restart local v1    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "i":I
    :cond_45
    :try_start_45
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDevice;->stopRepeating()V
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_42

    .line 189
    :try_start_4f
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDevice;->waitUntilIdle()V

    .line 193
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 194
    .local v6, "streamId":Ljava/lang/Integer;
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v7, v9}, Landroid/hardware/camera2/ICameraDeviceUser;->deleteStream(I)I

    .line 195
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDevice;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->delete(I)V
    :try_end_74
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_4f .. :try_end_74} :catch_75
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_74} :catch_a4
    .catchall {:try_start_4f .. :try_end_74} :catchall_42

    goto :goto_56

    .line 207
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "streamId":Ljava/lang/Integer;
    :catch_75
    move-exception v2

    .line 208
    .local v2, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_76
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v7

    const/4 v9, 0x4

    if-ne v7, v9, :cond_a7

    .line 209
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v9, "The camera is currently busy. You must wait until the previous operation completes."

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_85
    .catchall {:try_start_76 .. :try_end_85} :catchall_42

    .line 199
    .end local v2    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_85
    :try_start_85
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_89
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ac

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    .line 202
    .restart local v5    # "s":Landroid/view/Surface;
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v7, v9, v10, v11, v5}, Landroid/hardware/camera2/ICameraDeviceUser;->createStream(IIILandroid/view/Surface;)I

    move-result v6

    .line 203
    .local v6, "streamId":I
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDevice;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_a3
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_85 .. :try_end_a3} :catch_75
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_a3} :catch_a4
    .catchall {:try_start_85 .. :try_end_a3} :catchall_42

    goto :goto_89

    .line 214
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "s":Landroid/view/Surface;
    .end local v6    # "streamId":I
    :catch_a4
    move-exception v2

    .line 216
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_a5
    monitor-exit v8

    .line 225
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_a6
    return-void

    .line 213
    .local v2, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :cond_a7
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v7

    throw v7

    .line 219
    .end local v2    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_ac
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_bb

    .line 220
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    :goto_b9
    monitor-exit v8

    goto :goto_a6

    .line 222
    :cond_bb
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c2
    .catchall {:try_start_a5 .. :try_end_c2} :catchall_42

    goto :goto_b9
.end method

.method public createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 7
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 231
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDevice;->checkIfCameraClosed()V

    .line 233
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1d

    .line 236
    .local v2, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_start_b
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v3, p1, v2}, Landroid/hardware/camera2/ICameraDeviceUser;->createDefaultRequest(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I
    :try_end_10
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_b .. :try_end_10} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_20
    .catchall {:try_start_b .. :try_end_10} :catchall_1d

    .line 244
    :try_start_10
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 247
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    monitor-exit v4

    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_16
    return-object v0

    .line 237
    :catch_17
    move-exception v1

    .line 238
    .local v1, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    throw v3

    .line 248
    .end local v1    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v2    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw v3

    .line 239
    .restart local v2    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_20
    move-exception v1

    .line 241
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    :try_start_22
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1d

    goto :goto_16
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 420
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDevice;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 423
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 425
    return-void

    .line 423
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 381
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDevice;->checkIfCameraClosed()V

    .line 383
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1a

    .line 385
    :try_start_d
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraDeviceUser;->flush()I
    :try_end_12
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_d .. :try_end_12} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_1d
    .catchall {:try_start_d .. :try_end_12} :catchall_1a

    .line 392
    :try_start_12
    monitor-exit v2

    .line 393
    :goto_13
    return-void

    .line 386
    :catch_14
    move-exception v0

    .line 387
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 392
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1

    .line 388
    :catch_1d
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1a

    goto :goto_13
.end method

.method public getCallbacks()Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallbacks:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .registers 5
    .param p1, "remoteDevice"    # Landroid/hardware/camera2/ICameraDeviceUser;

    .prologue
    .line 148
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_3
    invoke-static {p1}, Landroid/hardware/camera2/utils/CameraBinderDecorator;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/ICameraDeviceUser;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 151
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnOpened:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;)I
    .registers 6
    .param p2, "listener"    # Landroid/hardware/camera2/CameraDevice$CaptureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraDevice$CaptureListener;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 322
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "Set Repeating burst request list is empty, do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v0, -0x1

    return v0

    .line 326
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Burst capture implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;)I
    .registers 5
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "listener"    # Landroid/hardware/camera2/CameraDevice$CaptureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 315
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDevice;->submitCaptureRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;Z)I

    move-result v0

    return v0
.end method

.method public stopRepeating()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 332
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 333
    :try_start_4
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDevice;->checkIfCameraClosed()V

    .line 334
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestId:I

    if-eq v2, v4, :cond_1e

    .line 336
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestId:I

    .line 337
    .local v1, "requestId":I
    const/4 v2, -0x1

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestId:I

    .line 340
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_26

    .line 343
    :try_start_19
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v2, v1}, Landroid/hardware/camera2/ICameraDeviceUser;->cancelRequest(I)I
    :try_end_1e
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_19 .. :try_end_1e} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_29
    .catchall {:try_start_19 .. :try_end_1e} :catchall_26

    .line 351
    .end local v1    # "requestId":I
    :cond_1e
    :try_start_1e
    monitor-exit v3

    .line 352
    :goto_1f
    return-void

    .line 344
    .restart local v1    # "requestId":I
    :catch_20
    move-exception v0

    .line 345
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v2

    throw v2

    .line 351
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v1    # "requestId":I
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    throw v2

    .line 346
    .restart local v1    # "requestId":I
    :catch_29
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_26

    goto :goto_1f
.end method

.method public waitUntilIdle()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 357
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 358
    :try_start_4
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDevice;->checkIfCameraClosed()V

    .line 359
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestId:I

    if-eq v1, v3, :cond_16

    .line 360
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Active repeating request ongoing"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v1

    .line 364
    :cond_16
    :try_start_16
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraDeviceUser;->waitUntilIdle()I
    :try_end_1b
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_16 .. :try_end_1b} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_30
    .catchall {:try_start_16 .. :try_end_1b} :catchall_13

    .line 372
    const/4 v1, -0x1

    :try_start_1c
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestId:I

    .line 373
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 374
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 375
    monitor-exit v2

    .line 376
    :goto_29
    return-void

    .line 365
    :catch_2a
    move-exception v0

    .line 366
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 367
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_30
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_13

    goto :goto_29
.end method
