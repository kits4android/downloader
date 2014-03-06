.class Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;
.super Landroid/bluetooth/IQBluetoothAdapterCallback$Stub;
.source "QBluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/QBluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LEExtendedScanClientWrapper"
.end annotation


# instance fields
.field private final mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/bluetooth/QBluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mClient:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

.field private mScanToken:I

.field private final mServiceFilter:[Landroid/bluetooth/BluetoothLEServiceUuid;


# direct methods
.method public constructor <init>(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;[Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .registers 6
    .param p1, "adapter"    # Landroid/bluetooth/QBluetoothAdapter;
    .param p2, "adapterService"    # Landroid/bluetooth/IQBluetooth;
    .param p3, "services"    # [Landroid/bluetooth/BluetoothLEServiceUuid;
    .param p4, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    .line 350
    invoke-direct {p0}, Landroid/bluetooth/IQBluetoothAdapterCallback$Stub;-><init>()V

    .line 351
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 352
    iput-object p2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    .line 353
    iput-object p3, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mServiceFilter:[Landroid/bluetooth/BluetoothLEServiceUuid;

    .line 354
    iput-object p4, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mClient:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 355
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    .line 356
    return-void
.end method


# virtual methods
.method public onEnableRssiMonitor(Ljava/lang/String;II)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "enable"    # I
    .param p3, "status"    # I

    .prologue
    .line 418
    return-void
.end method

.method public onReadRssiThreshold(Ljava/lang/String;IIII)V
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "low"    # I
    .param p3, "upper"    # I
    .param p4, "alert"    # I
    .param p5, "status"    # I

    .prologue
    .line 415
    return-void
.end method

.method public onRssiThresholdEvent(Ljava/lang/String;II)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "evtType"    # I
    .param p3, "rssi"    # I

    .prologue
    .line 421
    return-void
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "advData"    # [B

    .prologue
    .line 395
    monitor-enter p0

    .line 396
    :try_start_1
    iget v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    if-gtz v2, :cond_7

    monitor-exit p0

    .line 408
    :goto_6
    return-void

    .line 397
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_34

    .line 399
    :try_start_8
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter;

    .line 400
    .local v0, "adapter":Landroid/bluetooth/QBluetoothAdapter;
    if-nez v0, :cond_37

    .line 401
    const-string v2, "QBluetoothAdapter"

    const-string v3, "OnScanResult, QBluetoothAdapter null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    goto :goto_6

    .line 405
    .end local v0    # "adapter":Landroid/bluetooth/QBluetoothAdapter;
    :catch_1a
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "QBluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 397
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v2

    .line 404
    .restart local v0    # "adapter":Landroid/bluetooth/QBluetoothAdapter;
    :cond_37
    :try_start_37
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mClient:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_44} :catch_1a

    goto :goto_6
.end method

.method public onUpdateLease()Z
    .registers 4

    .prologue
    .line 424
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter;

    .line 425
    .local v0, "adapter":Landroid/bluetooth/QBluetoothAdapter;
    if-nez v0, :cond_14

    .line 426
    const-string v1, "QBluetoothAdapter"

    const-string/jumbo v2, "onUpdateLease(), QBluetoothAdapter null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v1, 0x0

    .line 429
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method

.method public onWriteRssiThreshold(Ljava/lang/String;I)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 411
    return-void
.end method

.method public startScan()Z
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 359
    const/4 v1, 0x0

    .line 360
    .local v1, "started":Z
    monitor-enter p0

    .line 361
    :try_start_3
    iget v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    if-ne v2, v4, :cond_1a

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_26

    if-eqz v2, :cond_1a

    .line 364
    :try_start_b
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mServiceFilter:[Landroid/bluetooth/BluetoothLEServiceUuid;

    invoke-interface {v2, v3, p0}, Landroid/bluetooth/IQBluetooth;->startLeScanEx([Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/IQBluetoothAdapterCallback;)I

    move-result v2

    iput v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    .line 365
    iget v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_17} :catch_1c
    .catchall {:try_start_b .. :try_end_17} :catchall_26

    if-eq v2, v4, :cond_1a

    .line 366
    const/4 v1, 0x1

    .line 373
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit p0

    .line 374
    return v1

    .line 368
    :catch_1c
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "QBluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    const/4 v1, 0x0

    goto :goto_1a

    .line 373
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_26
    move-exception v2

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_26

    throw v2
.end method

.method public stopScan()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 378
    monitor-enter p0

    .line 379
    :try_start_2
    iget v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    if-eq v1, v2, :cond_14

    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_1f

    if-eqz v1, :cond_14

    .line 382
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iget v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IQBluetooth;->stopLeScanEx(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_16
    .catchall {:try_start_a .. :try_end_11} :catchall_1f

    .line 386
    :goto_11
    const/4 v1, -0x1

    :try_start_12
    iput v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    .line 388
    :cond_14
    monitor-exit p0

    .line 389
    return-void

    .line 383
    :catch_16
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 388
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1f
    move-exception v1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v1
.end method
