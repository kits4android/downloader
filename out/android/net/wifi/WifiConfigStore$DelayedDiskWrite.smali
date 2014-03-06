.class Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedDiskWrite"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DelayedDiskWrite"

.field private static sDiskWriteHandler:Landroid/os/Handler;

.field private static sDiskWriteHandlerThread:Landroid/os/HandlerThread;

.field private static sWriteSequence:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 789
    const/4 v0, 0x0

    sput v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)V
    .registers 1
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 784
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->onWriteCalled(Ljava/util/List;)V

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 935
    const-string v0, "DelayedDiskWrite"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-void
.end method

.method private static onWriteCalled(Ljava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 813
    .local p0, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v10, 0x0

    .line 815
    .local v10, "out":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v11, Ljava/io/DataOutputStream;

    new-instance v16, Ljava/io/BufferedOutputStream;

    new-instance v17, Ljava/io/FileOutputStream;

    # getter for: Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->access$100()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_29c
    .catchall {:try_start_1 .. :try_end_16} :catchall_299

    .line 818
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .local v11, "out":Ljava/io/DataOutputStream;
    const/16 v16, 0x2

    :try_start_18
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 820
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_263

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2d} :catch_72
    .catchall {:try_start_18 .. :try_end_2d} :catchall_105

    .line 821
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v15, 0x0

    .line 824
    .local v15, "writeToFile":Z
    :try_start_2e
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 825
    .local v9, "linkProperties":Landroid/net/LinkProperties;
    sget-object v16, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_2a0

    .line 866
    const-string v16, "Ignore invalid ip assignment while writing"

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V

    .line 870
    :goto_44
    :pswitch_44
    sget-object v16, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_2aa

    .line 901
    const-string v16, "Ignthisore invalid proxy settings while writing"

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V

    .line 904
    :goto_58
    :pswitch_58
    if-eqz v15, :cond_6a

    .line 905
    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 906
    # invokes: Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I
    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->access$200(Landroid/net/wifi/WifiConfiguration;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_6a
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_6a} :catch_e2
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_6a} :catch_72
    .catchall {:try_start_2e .. :try_end_6a} :catchall_105

    .line 911
    .end local v9    # "linkProperties":Landroid/net/LinkProperties;
    :cond_6a
    :goto_6a
    :try_start_6a
    const-string v16, "eos"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_71} :catch_72
    .catchall {:try_start_6a .. :try_end_71} :catchall_105

    goto :goto_21

    .line 914
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "writeToFile":Z
    :catch_72
    move-exception v3

    move-object v10, v11

    .line 915
    .end local v11    # "out":Ljava/io/DataOutputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    :goto_74
    :try_start_74
    const-string v16, "Error writing data file"

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_299

    .line 917
    if-eqz v10, :cond_7e

    .line 919
    :try_start_7b
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_293

    .line 924
    :cond_7e
    :goto_7e
    const-class v17, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v17

    .line 925
    :try_start_81
    sget v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v16, v16, -0x1

    sput v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    if-nez v16, :cond_9a

    .line 926
    sget-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual/range {v16 .. v16}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Looper;->quit()V

    .line 927
    const/16 v16, 0x0

    sput-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    .line 928
    const/16 v16, 0x0

    sput-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 930
    :cond_9a
    monitor-exit v17
    :try_end_9b
    .catchall {:try_start_81 .. :try_end_9b} :catchall_28b

    .line 932
    .end local v3    # "e":Ljava/io/IOException;
    :goto_9b
    return-void

    .line 827
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v9    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v15    # "writeToFile":Z
    :pswitch_9c
    :try_start_9c
    const-string v16, "ipAssignment"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 828
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_b8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_12a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 830
    .local v8, "linkAddr":Landroid/net/LinkAddress;
    const-string v16, "linkAddress"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_e1
    .catch Ljava/lang/NullPointerException; {:try_start_9c .. :try_end_e1} :catch_e2
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_e1} :catch_72
    .catchall {:try_start_9c .. :try_end_e1} :catchall_105

    goto :goto_b8

    .line 908
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "linkAddr":Landroid/net/LinkAddress;
    .end local v9    # "linkProperties":Landroid/net/LinkProperties;
    :catch_e2
    move-exception v3

    .line 909
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_e3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failure in writing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_103} :catch_72
    .catchall {:try_start_e3 .. :try_end_103} :catchall_105

    goto/16 :goto_6a

    .line 917
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .end local v15    # "writeToFile":Z
    :catchall_105
    move-exception v16

    move-object v10, v11

    .end local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    :goto_107
    if-eqz v10, :cond_10c

    .line 919
    :try_start_109
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_10c} :catch_296

    .line 924
    :cond_10c
    :goto_10c
    const-class v17, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v17

    .line 925
    :try_start_10f
    sget v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v18, v18, -0x1

    sput v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    if-nez v18, :cond_128

    .line 926
    sget-object v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual/range {v18 .. v18}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Looper;->quit()V

    .line 927
    const/16 v18, 0x0

    sput-object v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    .line 928
    const/16 v18, 0x0

    sput-object v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 930
    :cond_128
    monitor-exit v17
    :try_end_129
    .catchall {:try_start_10f .. :try_end_129} :catchall_28e

    throw v16

    .line 834
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v15    # "writeToFile":Z
    :cond_12a
    :try_start_12a
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_132
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_193

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 835
    .local v14, "route":Landroid/net/RouteInfo;
    const-string v16, "gateway"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v2

    .line 837
    .local v2, "dest":Landroid/net/LinkAddress;
    if-eqz v2, :cond_183

    .line 838
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 839
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 844
    :goto_168
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v16

    if-eqz v16, :cond_18b

    .line 845
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 846
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_132

    .line 842
    :cond_183
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_168

    .line 848
    :cond_18b
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_132

    .line 851
    .end local v2    # "dest":Landroid/net/LinkAddress;
    .end local v14    # "route":Landroid/net/RouteInfo;
    :cond_193
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_19b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1b8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 852
    .local v7, "inetAddr":Ljava/net/InetAddress;
    const-string v16, "dns"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_19b

    .line 855
    .end local v7    # "inetAddr":Ljava/net/InetAddress;
    :cond_1b8
    const/4 v15, 0x1

    .line 856
    goto/16 :goto_44

    .line 858
    .end local v6    # "i$":Ljava/util/Iterator;
    :pswitch_1bb
    const-string v16, "ipAssignment"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 859
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 860
    const/4 v15, 0x1

    .line 861
    goto/16 :goto_44

    .line 872
    :pswitch_1d2
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v13

    .line 873
    .local v13, "proxyProperties":Landroid/net/ProxyProperties;
    invoke-virtual {v13}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v4

    .line 874
    .local v4, "exclusionList":Ljava/lang/String;
    const-string/jumbo v16, "proxySettings"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 875
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 876
    const-string/jumbo v16, "proxyHost"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v13}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 878
    const-string/jumbo v16, "proxyPort"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 879
    invoke-virtual {v13}, Landroid/net/ProxyProperties;->getPort()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 880
    const-string v16, "exclusionList"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v11, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 882
    const/4 v15, 0x1

    .line 883
    goto/16 :goto_58

    .line 885
    .end local v4    # "exclusionList":Ljava/lang/String;
    .end local v13    # "proxyProperties":Landroid/net/ProxyProperties;
    :pswitch_21e
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v12

    .line 886
    .local v12, "proxyPacProperties":Landroid/net/ProxyProperties;
    const-string/jumbo v16, "proxySettings"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 887
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 888
    const-string/jumbo v16, "proxyPac"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 890
    const/4 v15, 0x1

    .line 891
    goto/16 :goto_58

    .line 893
    .end local v12    # "proxyPacProperties":Landroid/net/ProxyProperties;
    :pswitch_24b
    const-string/jumbo v16, "proxySettings"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 894
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_260
    .catch Ljava/lang/NullPointerException; {:try_start_12a .. :try_end_260} :catch_e2
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_260} :catch_72
    .catchall {:try_start_12a .. :try_end_260} :catchall_105

    .line 895
    const/4 v15, 0x1

    .line 896
    goto/16 :goto_58

    .line 917
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "linkProperties":Landroid/net/LinkProperties;
    .end local v15    # "writeToFile":Z
    :cond_263
    if-eqz v11, :cond_268

    .line 919
    :try_start_265
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_268} :catch_291

    .line 924
    :cond_268
    :goto_268
    const-class v17, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v17

    .line 925
    :try_start_26b
    sget v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v16, v16, -0x1

    sput v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    if-nez v16, :cond_284

    .line 926
    sget-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual/range {v16 .. v16}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Looper;->quit()V

    .line 927
    const/16 v16, 0x0

    sput-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    .line 928
    const/16 v16, 0x0

    sput-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 930
    :cond_284
    monitor-exit v17

    move-object v10, v11

    .line 931
    .end local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_9b

    .line 930
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    :catchall_288
    move-exception v16

    monitor-exit v17
    :try_end_28a
    .catchall {:try_start_26b .. :try_end_28a} :catchall_288

    throw v16

    .end local v11    # "out":Ljava/io/DataOutputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    :catchall_28b
    move-exception v16

    :try_start_28c
    monitor-exit v17
    :try_end_28d
    .catchall {:try_start_28c .. :try_end_28d} :catchall_28b

    throw v16

    .end local v3    # "e":Ljava/io/IOException;
    :catchall_28e
    move-exception v16

    :try_start_28f
    monitor-exit v17
    :try_end_290
    .catchall {:try_start_28f .. :try_end_290} :catchall_28e

    throw v16

    .line 920
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    :catch_291
    move-exception v16

    goto :goto_268

    .end local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    :catch_293
    move-exception v16

    goto/16 :goto_7e

    .end local v3    # "e":Ljava/io/IOException;
    :catch_296
    move-exception v17

    goto/16 :goto_10c

    .line 917
    :catchall_299
    move-exception v16

    goto/16 :goto_107

    .line 914
    :catch_29c
    move-exception v3

    goto/16 :goto_74

    .line 825
    nop

    :pswitch_data_2a0
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_1bb
        :pswitch_44
    .end packed-switch

    .line 870
    :pswitch_data_2aa
    .packed-switch 0x1
        :pswitch_1d2
        :pswitch_21e
        :pswitch_24b
        :pswitch_58
    .end packed-switch
.end method

.method static write(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 795
    .local p0, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-class v1, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v1

    .line 796
    :try_start_3
    sget v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    .line 797
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "WifiConfigThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 798
    sget-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 799
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    .line 801
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_33

    .line 803
    sget-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 809
    return-void

    .line 801
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method
