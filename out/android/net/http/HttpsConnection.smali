.class public Landroid/net/http/HttpsConnection;
.super Landroid/net/http/Connection;
.source "HttpsConnection.java"


# static fields
.field private static mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private mAborted:Z

.field private mProxyHost:Lorg/apache/http/HttpHost;

.field private mSuspendLock:Ljava/lang/Object;

.field private mSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 60
    sput-object v0, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 66
    invoke-static {v0}, Landroid/net/http/HttpsConnection;->initializeEngine(Ljava/io/File;)V

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "proxy"    # Lorg/apache/http/HttpHost;
    .param p4, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, p1, p2, p4}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    .line 128
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 134
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    .line 145
    iput-object p3, p0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 146
    return-void
.end method

.method private static declared-synchronized getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 116
    const-class v0, Landroid/net/http/HttpsConnection;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initializeEngine(Ljava/io/File;)V
    .registers 8
    .param p0, "sessionDir"    # Ljava/io/File;

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "cache":Lcom/android/org/conscrypt/SSLClientSessionCache;
    if-eqz p0, :cond_25

    .line 78
    :try_start_3
    const-string v4, "HttpsConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caching SSL sessions in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {p0}, Lcom/android/org/conscrypt/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lcom/android/org/conscrypt/SSLClientSessionCache;

    move-result-object v0

    .line 83
    :cond_25
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLContextImpl;

    invoke-direct {v2}, Lcom/android/org/conscrypt/OpenSSLContextImpl;-><init>()V

    .line 86
    .local v2, "sslContext":Lcom/android/org/conscrypt/OpenSSLContextImpl;
    const/4 v4, 0x1

    new-array v3, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Landroid/net/http/HttpsConnection$1;

    invoke-direct {v5}, Landroid/net/http/HttpsConnection$1;-><init>()V

    aput-object v5, v3, v4

    .line 102
    .local v3, "trustManagers":[Ljavax/net/ssl/TrustManager;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 103
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    .line 105
    const-class v5, Landroid/net/http/HttpsConnection;

    monitor-enter v5
    :try_end_44
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_44} :catch_4f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_44} :catch_56

    .line 106
    :try_start_44
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    sput-object v4, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 107
    monitor-exit v5

    .line 113
    return-void

    .line 107
    :catchall_4c
    move-exception v4

    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v4
    :try_end_4f
    .catch Ljava/security/KeyManagementException; {:try_start_4e .. :try_end_4f} :catch_4f
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4f} :catch_56

    .line 108
    .end local v2    # "sslContext":Lcom/android/org/conscrypt/OpenSSLContextImpl;
    .end local v3    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_4f
    move-exception v1

    .line 109
    .local v1, "e":Ljava/security/KeyManagementException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 110
    .end local v1    # "e":Ljava/security/KeyManagementException;
    :catch_56
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method closeConnection()V
    .registers 3

    .prologue
    .line 383
    iget-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v1, :cond_8

    .line 385
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    .line 389
    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 390
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_1a

    .line 398
    :cond_19
    :goto_19
    return-void

    .line 392
    :catch_1a
    move-exception v0

    .line 396
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19
.end method

.method getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 420
    const-string v0, "https"

    return-object v0
.end method

.method openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .registers 32
    .param p1, "req"    # Landroid/net/http/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/16 v22, 0x0

    .line 167
    .local v22, "sslSock":Ljavax/net/ssl/SSLSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1f0

    .line 175
    const/16 v17, 0x0

    .line 176
    .local v17, "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    const/16 v20, 0x0

    .line 178
    .local v20, "proxySock":Ljava/net/Socket;
    :try_start_e
    new-instance v21, Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2d} :catch_b4

    .line 181
    .end local v20    # "proxySock":Ljava/net/Socket;
    .local v21, "proxySock":Ljava/net/Socket;
    const v26, 0xea60

    :try_start_30
    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 183
    new-instance v18, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3c} :catch_2ab

    .line 184
    .end local v17    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .local v18, "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    :try_start_3c
    new-instance v16, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 185
    .local v16, "params":Lorg/apache/http/params/HttpParams;
    const/16 v26, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 187
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_53} :catch_2b0

    .line 202
    const/16 v24, 0x0

    .line 203
    .local v24, "statusLine":Lorg/apache/http/StatusLine;
    const/16 v23, 0x0

    .line 204
    .local v23, "statusCode":I
    new-instance v13, Landroid/net/http/Headers;

    invoke-direct {v13}, Landroid/net/http/Headers;-><init>()V

    .line 206
    .local v13, "headers":Landroid/net/http/Headers;
    :try_start_5c
    new-instance v19, Lorg/apache/http/message/BasicHttpRequest;

    const-string v26, "CONNECT"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v19, "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/message/BasicHttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .local v5, "arr$":[Lorg/apache/http/Header;
    array-length v15, v5

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_7f
    if-ge v14, v15, :cond_ca

    aget-object v11, v5, v14

    .line 213
    .local v11, "h":Lorg/apache/http/Header;
    invoke-interface {v11}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v26

    sget-object v27, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 214
    .local v12, "headerName":Ljava/lang/String;
    const-string/jumbo v26, "proxy"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_ac

    const-string v26, "keep-alive"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_ac

    const-string v26, "host"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b1

    .line 216
    :cond_ac
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_b1
    .catch Lorg/apache/http/ParseException; {:try_start_5c .. :try_end_b1} :catch_16b
    .catch Lorg/apache/http/HttpException; {:try_start_5c .. :try_end_b1} :catch_17c
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_b1} :catch_18d

    .line 212
    :cond_b1
    add-int/lit8 v14, v14, 0x1

    goto :goto_7f

    .line 188
    .end local v5    # "arr$":[Lorg/apache/http/Header;
    .end local v11    # "h":Lorg/apache/http/Header;
    .end local v12    # "headerName":Ljava/lang/String;
    .end local v13    # "headers":Landroid/net/http/Headers;
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "params":Lorg/apache/http/params/HttpParams;
    .end local v18    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v19    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    .end local v21    # "proxySock":Ljava/net/Socket;
    .end local v23    # "statusCode":I
    .end local v24    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v17    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v20    # "proxySock":Ljava/net/Socket;
    :catch_b4
    move-exception v8

    .line 189
    .local v8, "e":Ljava/io/IOException;
    :goto_b5
    if-eqz v17, :cond_ba

    .line 190
    invoke-virtual/range {v17 .. v17}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    .line 193
    :cond_ba
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 194
    .local v10, "errorMessage":Ljava/lang/String;
    if-nez v10, :cond_c2

    .line 195
    const-string v10, "failed to establish a connection to the proxy"

    .line 199
    :cond_c2
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 220
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "errorMessage":Ljava/lang/String;
    .end local v17    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v20    # "proxySock":Ljava/net/Socket;
    .restart local v5    # "arr$":[Lorg/apache/http/Header;
    .restart local v13    # "headers":Landroid/net/http/Headers;
    .restart local v14    # "i$":I
    .restart local v15    # "len$":I
    .restart local v16    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v18    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v19    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    .restart local v21    # "proxySock":Ljava/net/Socket;
    .restart local v23    # "statusCode":I
    .restart local v24    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_ca
    :try_start_ca
    invoke-virtual/range {v18 .. v19}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 221
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    .line 228
    :cond_d0
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    move-result-object v24

    .line 229
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_d9
    .catch Lorg/apache/http/ParseException; {:try_start_ca .. :try_end_d9} :catch_16b
    .catch Lorg/apache/http/HttpException; {:try_start_ca .. :try_end_d9} :catch_17c
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_d9} :catch_18d

    move-result v23

    .line 230
    const/16 v26, 0xc8

    move/from16 v0, v23

    move/from16 v1, v26

    if-lt v0, v1, :cond_d0

    .line 257
    const/16 v26, 0xc8

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_1b4

    .line 259
    :try_start_ea
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v22, v0
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_118} :catch_19e

    .line 311
    .end local v5    # "arr$":[Lorg/apache/http/Header;
    .end local v13    # "headers":Landroid/net/http/Headers;
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "params":Lorg/apache/http/params/HttpParams;
    .end local v18    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v19    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    .end local v21    # "proxySock":Ljava/net/Socket;
    .end local v23    # "statusCode":I
    .end local v24    # "statusLine":Lorg/apache/http/StatusLine;
    :goto_118
    invoke-static {}, Landroid/net/http/CertificateChainValidator;->getInstance()Landroid/net/http/CertificateChainValidator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/CertificateChainValidator;->doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v9

    .line 315
    .local v9, "error":Landroid/net/http/SslError;
    if-eqz v9, :cond_289

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 322
    const/16 v26, 0x1

    :try_start_13d
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 323
    monitor-exit v27
    :try_end_144
    .catchall {:try_start_13d .. :try_end_144} :catchall_234

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Request;->getEventHandler()Landroid/net/http/EventHandler;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v9}, Landroid/net/http/EventHandler;->handleSslErrorRequest(Landroid/net/http/SslError;)Z

    move-result v6

    .line 326
    .local v6, "canHandle":Z
    if-nez v6, :cond_237

    .line 327
    new-instance v26, Ljava/io/IOException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to handle "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 231
    .end local v6    # "canHandle":Z
    .end local v9    # "error":Landroid/net/http/SslError;
    .restart local v13    # "headers":Landroid/net/http/Headers;
    .restart local v16    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v18    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21    # "proxySock":Ljava/net/Socket;
    .restart local v23    # "statusCode":I
    .restart local v24    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_16b
    move-exception v8

    .line 232
    .local v8, "e":Lorg/apache/http/ParseException;
    invoke-virtual {v8}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 233
    .restart local v10    # "errorMessage":Ljava/lang/String;
    if-nez v10, :cond_174

    .line 234
    const-string v10, "failed to send a CONNECT request"

    .line 238
    :cond_174
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 239
    .end local v8    # "e":Lorg/apache/http/ParseException;
    .end local v10    # "errorMessage":Ljava/lang/String;
    :catch_17c
    move-exception v8

    .line 240
    .local v8, "e":Lorg/apache/http/HttpException;
    invoke-virtual {v8}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 241
    .restart local v10    # "errorMessage":Ljava/lang/String;
    if-nez v10, :cond_185

    .line 242
    const-string v10, "failed to send a CONNECT request"

    .line 246
    :cond_185
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 247
    .end local v8    # "e":Lorg/apache/http/HttpException;
    .end local v10    # "errorMessage":Ljava/lang/String;
    :catch_18d
    move-exception v8

    .line 248
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 249
    .restart local v10    # "errorMessage":Ljava/lang/String;
    if-nez v10, :cond_196

    .line 250
    const-string v10, "failed to send a CONNECT request"

    .line 254
    :cond_196
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 261
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "errorMessage":Ljava/lang/String;
    .restart local v5    # "arr$":[Lorg/apache/http/Header;
    .restart local v14    # "i$":I
    .restart local v15    # "len$":I
    .restart local v19    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    :catch_19e
    move-exception v8

    .line 262
    .restart local v8    # "e":Ljava/io/IOException;
    if-eqz v22, :cond_1a4

    .line 263
    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 266
    :cond_1a4
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 267
    .restart local v10    # "errorMessage":Ljava/lang/String;
    if-nez v10, :cond_1ac

    .line 268
    const-string v10, "failed to create an SSL socket"

    .line 271
    :cond_1ac
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 275
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "errorMessage":Ljava/lang/String;
    :cond_1b4
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v25

    .line 277
    .local v25, "version":Lorg/apache/http/ProtocolVersion;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v27

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v28

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v23

    move-object/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    .line 281
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    .line 282
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/net/http/EventHandler;->endData()V

    .line 284
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    .line 288
    const/4 v7, 0x0

    .line 369
    .end local v5    # "arr$":[Lorg/apache/http/Header;
    .end local v13    # "headers":Landroid/net/http/Headers;
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "params":Lorg/apache/http/params/HttpParams;
    .end local v18    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v19    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    .end local v21    # "proxySock":Ljava/net/Socket;
    .end local v23    # "statusCode":I
    .end local v24    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v25    # "version":Lorg/apache/http/ProtocolVersion;
    :goto_1ef
    return-object v7

    .line 293
    :cond_1f0
    :try_start_1f0
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v22, v0

    .line 295
    const v26, 0xea60

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V
    :try_end_21c
    .catch Ljava/io/IOException; {:try_start_1f0 .. :try_end_21c} :catch_21e

    goto/16 :goto_118

    .line 296
    :catch_21e
    move-exception v8

    .line 297
    .restart local v8    # "e":Ljava/io/IOException;
    if-eqz v22, :cond_224

    .line 298
    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 301
    :cond_224
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 302
    .restart local v10    # "errorMessage":Ljava/lang/String;
    if-nez v10, :cond_22c

    .line 303
    const-string v10, "failed to create an SSL socket"

    .line 306
    :cond_22c
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 323
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "errorMessage":Ljava/lang/String;
    .restart local v9    # "error":Landroid/net/http/SslError;
    :catchall_234
    move-exception v26

    :try_start_235
    monitor-exit v27
    :try_end_236
    .catchall {:try_start_235 .. :try_end_236} :catchall_234

    throw v26

    .line 329
    .restart local v6    # "canHandle":Z
    :cond_237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 330
    :try_start_23e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    move/from16 v26, v0
    :try_end_244
    .catchall {:try_start_23e .. :try_end_244} :catchall_285

    if-eqz v26, :cond_26e

    .line 338
    :try_start_246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    const-wide/32 v28, 0x927c0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 339
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    move/from16 v26, v0

    if-eqz v26, :cond_26e

    .line 343
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 344
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mAborted:Z
    :try_end_26e
    .catch Ljava/lang/InterruptedException; {:try_start_246 .. :try_end_26e} :catch_2a9
    .catchall {:try_start_246 .. :try_end_26e} :catchall_285

    .line 354
    :cond_26e
    :goto_26e
    :try_start_26e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mAborted:Z

    move/from16 v26, v0

    if-eqz v26, :cond_288

    .line 357
    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 358
    new-instance v26, Landroid/net/http/SSLConnectionClosedByUserException;

    const-string v28, "connection closed by the user"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/net/http/SSLConnectionClosedByUserException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 360
    :catchall_285
    move-exception v26

    monitor-exit v27
    :try_end_287
    .catchall {:try_start_26e .. :try_end_287} :catchall_285

    throw v26

    :cond_288
    :try_start_288
    monitor-exit v27
    :try_end_289
    .catchall {:try_start_288 .. :try_end_289} :catchall_285

    .line 364
    .end local v6    # "canHandle":Z
    :cond_289
    new-instance v7, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v7}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    .line 365
    .local v7, "conn":Landroid/net/http/AndroidHttpClientConnection;
    new-instance v16, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 366
    .local v16, "params":Lorg/apache/http/params/BasicHttpParams;
    const-string v26, "http.socket.buffer-size"

    const/16 v27, 0x2000

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 367
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    goto/16 :goto_1ef

    .line 350
    .end local v7    # "conn":Landroid/net/http/AndroidHttpClientConnection;
    .end local v16    # "params":Lorg/apache/http/params/BasicHttpParams;
    .restart local v6    # "canHandle":Z
    :catch_2a9
    move-exception v26

    goto :goto_26e

    .line 188
    .end local v6    # "canHandle":Z
    .end local v9    # "error":Landroid/net/http/SslError;
    .restart local v17    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21    # "proxySock":Ljava/net/Socket;
    :catch_2ab
    move-exception v8

    move-object/from16 v20, v21

    .end local v21    # "proxySock":Ljava/net/Socket;
    .restart local v20    # "proxySock":Ljava/net/Socket;
    goto/16 :goto_b5

    .end local v17    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v20    # "proxySock":Ljava/net/Socket;
    .restart local v18    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21    # "proxySock":Ljava/net/Socket;
    :catch_2b0
    move-exception v8

    move-object/from16 v20, v21

    .end local v21    # "proxySock":Ljava/net/Socket;
    .restart local v20    # "proxySock":Ljava/net/Socket;
    move-object/from16 v17, v18

    .end local v18    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v17    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    goto/16 :goto_b5
.end method

.method restartConnection(Z)V
    .registers 5
    .param p1, "proceed"    # Z

    .prologue
    const/4 v0, 0x0

    .line 409
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_4
    iget-boolean v2, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v2, :cond_15

    .line 411
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 412
    if-nez p1, :cond_e

    const/4 v0, 0x1

    :cond_e
    iput-boolean v0, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    .line 413
    iget-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 415
    :cond_15
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method setCertificate(Landroid/net/http/SslCertificate;)V
    .registers 2
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;

    .prologue
    .line 154
    iput-object p1, p0, Landroid/net/http/HttpsConnection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 155
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
