.class Landroid/bluetooth/BluetoothHandsfreeClient$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHandsfreeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHandsfreeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHandsfreeClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHandsfreeClient;)V
    .registers 2

    .prologue
    .line 374
    iput-object p1, p0, Landroid/bluetooth/BluetoothHandsfreeClient$1;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 8
    .param p1, "up"    # Z

    .prologue
    .line 377
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothStateChange: up="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-nez p1, :cond_45

    .line 380
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient$1;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    # getter for: Landroid/bluetooth/BluetoothHandsfreeClient;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->access$000(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 382
    :try_start_22
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient$1;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothHandsfreeClient;->access$102(Landroid/bluetooth/BluetoothHandsfreeClient;Landroid/bluetooth/IBluetoothHandsfreeClient;)Landroid/bluetooth/IBluetoothHandsfreeClient;

    .line 383
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient$1;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    # getter for: Landroid/bluetooth/BluetoothHandsfreeClient;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->access$200(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothHandsfreeClient$1;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    # getter for: Landroid/bluetooth/BluetoothHandsfreeClient;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Landroid/bluetooth/BluetoothHandsfreeClient;->access$000(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_37} :catch_39
    .catchall {:try_start_22 .. :try_end_37} :catchall_42

    .line 387
    :goto_37
    :try_start_37
    monitor-exit v2

    .line 402
    :goto_38
    return-void

    .line 384
    :catch_39
    move-exception v0

    .line 385
    .local v0, "re":Ljava/lang/Exception;
    const-string v1, "BluetoothHandsfreeClient"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 387
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_42
    move-exception v1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_42

    throw v1

    .line 389
    :cond_45
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient$1;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    # getter for: Landroid/bluetooth/BluetoothHandsfreeClient;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->access$000(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 391
    :try_start_4c
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient$1;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    # getter for: Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;
    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->access$100(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/bluetooth/IBluetoothHandsfreeClient;

    move-result-object v1

    if-nez v1, :cond_79

    .line 393
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient$1;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    # getter for: Landroid/bluetooth/BluetoothHandsfreeClient;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->access$200(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/bluetooth/BluetoothHandsfreeClient$1;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    # getter for: Landroid/bluetooth/BluetoothHandsfreeClient;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Landroid/bluetooth/BluetoothHandsfreeClient;->access$000(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/content/ServiceConnection;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_79

    .line 394
    const-string v1, "BluetoothHandsfreeClient"

    const-string v3, "Could not bind to Bluetooth Handsfree Client Service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_79} :catch_7e
    .catchall {:try_start_4c .. :try_end_79} :catchall_7b

    .line 400
    :cond_79
    :goto_79
    :try_start_79
    monitor-exit v2

    goto :goto_38

    :catchall_7b
    move-exception v1

    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7b

    throw v1

    .line 397
    :catch_7e
    move-exception v0

    .line 398
    .restart local v0    # "re":Ljava/lang/Exception;
    :try_start_7f
    const-string v1, "BluetoothHandsfreeClient"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_7b

    goto :goto_79
.end method
