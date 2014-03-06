.class public Landroid/net/VpnService;
.super Landroid/app/Service;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnService$1;,
        Landroid/net/VpnService$Builder;,
        Landroid/net/VpnService$Callback;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 254
    return-void
.end method

.method static synthetic access$100()Landroid/net/IConnectivityManager;
    .registers 1

    .prologue
    .line 106
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method private static getService()Landroid/net/IConnectivityManager;
    .registers 1

    .prologue
    .line 120
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static prepare(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 144
    :try_start_1
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    move-result v1

    if-eqz v1, :cond_12

    .line 150
    :goto_10
    return-object v0

    .line 147
    :catch_11
    move-exception v0

    .line 150
    :cond_12
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v0

    goto :goto_10
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 213
    if-eqz p1, :cond_15

    const-string v0, "android.net.VpnService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 214
    new-instance v0, Landroid/net/VpnService$Callback;

    invoke-direct {v0, p0, v1}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;Landroid/net/VpnService$1;)V

    .line 216
    :goto_14
    return-object v0

    :cond_15
    move-object v0, v1

    goto :goto_14
.end method

.method public onRevoke()V
    .registers 1

    .prologue
    .line 231
    invoke-virtual {p0}, Landroid/net/VpnService;->stopSelf()V

    .line 232
    return-void
.end method

.method public protect(I)Z
    .registers 6
    .param p1, "socket"    # I

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, "dup":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 170
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/net/IConnectivityManager;->protectVpn(Landroid/os/ParcelFileDescriptor;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_11
    .catchall {:try_start_1 .. :try_end_c} :catchall_19

    move-result v2

    .line 175
    :try_start_d
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_1e

    .line 178
    :goto_10
    return v2

    .line 171
    :catch_11
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 175
    :try_start_13
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_10

    .line 176
    :catch_17
    move-exception v3

    goto :goto_10

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_19
    move-exception v2

    .line 175
    :try_start_1a
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_20

    .line 178
    :goto_1d
    throw v2

    .line 176
    :catch_1e
    move-exception v3

    goto :goto_10

    :catch_20
    move-exception v3

    goto :goto_1d
.end method

.method public protect(Ljava/net/DatagramSocket;)Z
    .registers 3
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 200
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public protect(Ljava/net/Socket;)Z
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method
