.class Landroid/bluetooth/BluetoothDun$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothDun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDun;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDun;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 7
    .param p1, "on"    # Z

    .prologue
    .line 150
    const-string v2, "BluetoothDun"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBluetoothStateChange on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-eqz p1, :cond_45

    .line 153
    :try_start_1b
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    # getter for: Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDun;->access$000(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    move-result-object v2

    if-nez v2, :cond_30

    .line 154
    const-string v2, "BluetoothDun"

    const-string/jumbo v3, "onBluetoothStateChange call bindService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDun;->doBind()Z
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_30} :catch_31
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_30} :catch_3b

    .line 175
    :cond_30
    :goto_30
    return-void

    .line 157
    :catch_31
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "BluetoothDun"

    const-string/jumbo v3, "onBluetoothStateChange: could not bind to DUN service: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 159
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3b
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "BluetoothDun"

    const-string/jumbo v3, "onBluetoothStateChange: could not bind to DUN service: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 164
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_45
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    # getter for: Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDun;->access$100(Landroid/bluetooth/BluetoothDun;)Landroid/content/ServiceConnection;

    move-result-object v3

    monitor-enter v3

    .line 165
    :try_start_4c
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    # getter for: Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDun;->access$000(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/IBluetoothDun;
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_6b

    move-result-object v2

    if-eqz v2, :cond_69

    .line 167
    :try_start_54
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    const/4 v4, 0x0

    # setter for: Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothDun;->access$002(Landroid/bluetooth/BluetoothDun;Landroid/bluetooth/IBluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    .line 168
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    # getter for: Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDun;->access$200(Landroid/bluetooth/BluetoothDun;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    # getter for: Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDun;->access$100(Landroid/bluetooth/BluetoothDun;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_69} :catch_6e
    .catchall {:try_start_54 .. :try_end_69} :catchall_6b

    .line 173
    :cond_69
    :goto_69
    :try_start_69
    monitor-exit v3

    goto :goto_30

    :catchall_6b
    move-exception v2

    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_6b

    throw v2

    .line 169
    :catch_6e
    move-exception v1

    .line 170
    .local v1, "re":Ljava/lang/Exception;
    :try_start_6f
    const-string v2, "BluetoothDun"

    const-string v4, ""

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_6b

    goto :goto_69
.end method
