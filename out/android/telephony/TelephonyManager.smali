.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 85
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 189
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 195
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 201
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 484
    invoke-static {}, Landroid/telephony/TelephonyManager;->getProcCmdLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    .line 487
    const-string v0, "\\sproduct_type\\s*=\\s*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    .line 491
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1d

    .line 69
    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 74
    :goto_b
    sget-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_1c

    .line 75
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 78
    :cond_1c
    return-void

    .line 71
    :cond_1d
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_b
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .prologue
    .line 1265
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getLteOnCdmaModeStatic()I
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 507
    const-string v2, ""

    .line 509
    .local v2, "productType":Ljava/lang/String;
    const-string/jumbo v4, "telephony.lteOnCdmaDevice"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 511
    .local v0, "curVal":I
    move v3, v0

    .line 512
    .local v3, "retVal":I
    if-ne v3, v5, :cond_29

    .line 513
    sget-object v4, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    sget-object v5, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 514
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 515
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 516
    sget-object v4, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 517
    const/4 v3, 0x1

    .line 526
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_29
    :goto_29
    const-string v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLteOnCdmaMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " curVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " product_type=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' lteOnCdmaProductType=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return v3

    .line 519
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_68
    const/4 v3, 0x0

    goto :goto_29

    .line 522
    :cond_6a
    const/4 v3, 0x0

    goto :goto_29
.end method

.method public static getLteOnGsmModeStatic()I
    .registers 2

    .prologue
    .line 537
    const-string/jumbo v0, "telephony.lteOnGsmDevice"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNetworkClass(I)I
    .registers 2
    .param p0, "networkType"    # I

    .prologue
    .line 712
    packed-switch p0, :pswitch_data_c

    .line 732
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 718
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 728
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 730
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 712
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 749
    packed-switch p0, :pswitch_data_34

    .line 781
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 751
    :pswitch_6
    const-string v0, "GPRS"

    goto :goto_5

    .line 753
    :pswitch_9
    const-string v0, "EDGE"

    goto :goto_5

    .line 755
    :pswitch_c
    const-string v0, "UMTS"

    goto :goto_5

    .line 757
    :pswitch_f
    const-string v0, "HSDPA"

    goto :goto_5

    .line 759
    :pswitch_12
    const-string v0, "HSUPA"

    goto :goto_5

    .line 761
    :pswitch_15
    const-string v0, "HSPA"

    goto :goto_5

    .line 763
    :pswitch_18
    const-string v0, "CDMA"

    goto :goto_5

    .line 765
    :pswitch_1b
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_5

    .line 767
    :pswitch_1e
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_5

    .line 769
    :pswitch_21
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_5

    .line 771
    :pswitch_24
    const-string v0, "CDMA - 1xRTT"

    goto :goto_5

    .line 773
    :pswitch_27
    const-string v0, "LTE"

    goto :goto_5

    .line 775
    :pswitch_2a
    const-string v0, "CDMA - eHRPD"

    goto :goto_5

    .line 777
    :pswitch_2d
    const-string v0, "iDEN"

    goto :goto_5

    .line 779
    :pswitch_30
    const-string v0, "HSPA+"

    goto :goto_5

    .line 749
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_24
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_2d
        :pswitch_21
        :pswitch_27
        :pswitch_2a
        :pswitch_30
    .end packed-switch
.end method

.method public static getPhoneType(I)I
    .registers 4
    .param p0, "networkMode"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 424
    packed-switch p0, :pswitch_data_12

    move v0, v1

    .line 451
    :cond_6
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    .line 437
    goto :goto_6

    .line 445
    :pswitch_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_6

    move v0, v1

    .line 448
    goto :goto_6

    .line 424
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 408
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 409
    .local v0, "mode":I
    if-ne v0, v2, :cond_c

    .line 410
    const/4 v1, 0x0

    .line 411
    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    goto :goto_b
.end method

.method private getPhoneTypeFromProperty()I
    .registers 4

    .prologue
    .line 398
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 401
    .local v0, "type":I
    return v0
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .registers 10

    .prologue
    .line 460
    const-string v1, ""

    .line 461
    .local v1, "cmdline":Ljava/lang/String;
    const/4 v5, 0x0

    .line 463
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/cmdline"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_3d
    .catchall {:try_start_3 .. :try_end_a} :catchall_5e

    .line 464
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v6, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_c
    new-array v0, v7, [B

    .line 465
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 466
    .local v3, "count":I
    if-lez v3, :cond_1b

    .line 467
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_6a
    .catchall {:try_start_c .. :try_end_1a} :catchall_67

    .end local v1    # "cmdline":Ljava/lang/String;
    .local v2, "cmdline":Ljava/lang/String;
    move-object v1, v2

    .line 472
    .end local v2    # "cmdline":Ljava/lang/String;
    .restart local v1    # "cmdline":Ljava/lang/String;
    :cond_1b
    if-eqz v6, :cond_6d

    .line 474
    :try_start_1d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_3a

    move-object v5, v6

    .line 479
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :cond_21
    :goto_21
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/cmdline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-object v1

    .line 475
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_3a
    move-exception v7

    move-object v5, v6

    .line 476
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_21

    .line 469
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    :catch_3d
    move-exception v4

    .line 470
    .local v4, "e":Ljava/io/IOException;
    :goto_3e
    :try_start_3e
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No /proc/cmdline exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_5e

    .line 472
    if-eqz v5, :cond_21

    .line 474
    :try_start_58
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_21

    .line 475
    :catch_5c
    move-exception v7

    goto :goto_21

    .line 472
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_5e
    move-exception v7

    :goto_5f
    if-eqz v5, :cond_64

    .line 474
    :try_start_61
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 476
    :cond_64
    :goto_64
    throw v7

    .line 475
    :catch_65
    move-exception v8

    goto :goto_64

    .line 472
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catchall_67
    move-exception v7

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_5f

    .line 469
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_6a
    move-exception v4

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_3e

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :cond_6d
    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_21
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 2

    .prologue
    .line 1163
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableLocationUpdates()V
    .registers 2

    .prologue
    .line 314
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 318
    :goto_7
    return-void

    .line 316
    :catch_8
    move-exception v0

    goto :goto_7

    .line 315
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public enableLocationUpdates()V
    .registers 2

    .prologue
    .line 297
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 301
    :goto_7
    return-void

    .line 299
    :catch_8
    move-exception v0

    goto :goto_7

    .line 298
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public getAllCellInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1421
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo()Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1425
    :goto_9
    return-object v1

    .line 1422
    :catch_a
    move-exception v0

    .line 1423
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1424
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1425
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCallState()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1183
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1189
    :goto_9
    return v1

    .line 1184
    :catch_a
    move-exception v0

    .line 1186
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1187
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1189
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCdmaEriIconIndex()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 1316
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1321
    :goto_9
    return v1

    .line 1317
    :catch_a
    move-exception v0

    .line 1319
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1320
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1321
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCdmaEriIconMode()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 1334
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1339
    :goto_9
    return v1

    .line 1335
    :catch_a
    move-exception v0

    .line 1337
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1338
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1339
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1350
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1355
    :goto_9
    return-object v1

    .line 1351
    :catch_a
    move-exception v0

    .line 1353
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1354
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1355
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 273
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 274
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    move-object v1, v3

    .line 282
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_10
    :goto_10
    return-object v1

    .line 275
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_11
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 276
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_20

    move-result v4

    if-eqz v4, :cond_10

    move-object v1, v3

    .line 277
    goto :goto_10

    .line 279
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    :catch_1d
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    move-object v1, v3

    .line 280
    goto :goto_10

    .line 281
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_20
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 282
    goto :goto_10
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1067
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1072
    :goto_9
    return-object v1

    .line 1068
    :catch_a
    move-exception v0

    .line 1069
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1070
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1072
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCurrentPhoneType()I
    .registers 4

    .prologue
    .line 363
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 364
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 365
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 377
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 368
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_16

    move-result v2

    goto :goto_a

    .line 370
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v0

    .line 373
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a

    .line 374
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_16
    move-exception v0

    .line 377
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a
.end method

.method public getDataActivity()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1219
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1225
    :goto_9
    return v1

    .line 1220
    :catch_a
    move-exception v0

    .line 1222
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1223
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1225
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDataNetworkType()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 657
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 658
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 659
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkType()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_e

    move-result v2

    .line 669
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    :goto_b
    return v2

    .line 664
    :catch_c
    move-exception v0

    .line 666
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_b

    .line 667
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_e
    move-exception v0

    .line 669
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_b
.end method

.method public getDataState()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1255
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1260
    :goto_9
    return v1

    .line 1256
    :catch_a
    move-exception v0

    .line 1258
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1259
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1260
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 248
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 252
    :goto_9
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x412e847e00000000L

    mul-double/2addr v3, v5

    double-to-long v3, v3

    const-wide v5, 0x13fbc8e5446c0L

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 249
    :catch_a
    move-exception v0

    .line 250
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 251
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 252
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 231
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 235
    :goto_9
    return-object v1

    .line 232
    :catch_a
    move-exception v0

    .line 233
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 234
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 235
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 973
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 978
    :goto_9
    return-object v1

    .line 974
    :catch_a
    move-exception v0

    .line 975
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 976
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 978
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimDomain()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1135
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1140
    :goto_9
    return-object v1

    .line 1136
    :catch_a
    move-exception v0

    .line 1137
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1138
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1140
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimImpi()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1119
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1124
    :goto_9
    return-object v1

    .line 1120
    :catch_a
    move-exception v0

    .line 1121
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1122
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1124
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1152
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1157
    :goto_9
    return-object v1

    .line 1153
    :catch_a
    move-exception v0

    .line 1154
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1155
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1157
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1011
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1016
    :goto_9
    return-object v1

    .line 1012
    :catch_a
    move-exception v0

    .line 1013
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1014
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1016
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 991
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 996
    :goto_9
    return-object v1

    .line 992
    :catch_a
    move-exception v0

    .line 993
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 994
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 996
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLteOnCdmaMode()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 915
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 921
    :goto_9
    return v1

    .line 916
    :catch_a
    move-exception v0

    .line 918
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 919
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 921
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLteOnGsmMode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 931
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteOnGsmMode()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 936
    :goto_9
    return v1

    .line 932
    :catch_a
    move-exception v0

    .line 933
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 934
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 936
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1462
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1463
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1453
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1454
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getMsisdn()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1031
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdn()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1036
    :goto_9
    return-object v1

    .line 1032
    :catch_a
    move-exception v0

    .line 1033
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1034
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1036
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 333
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_12

    move-result-object v1

    .line 337
    :goto_f
    return-object v1

    .line 334
    :catch_10
    move-exception v0

    .line 335
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_f

    .line 336
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 337
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_f
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 588
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 566
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 555
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .registers 2

    .prologue
    .line 628
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 744
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .registers 2

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 392
    const/4 v0, 0x0

    .line 394
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_7
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 882
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 864
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 875
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 894
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 899
    :goto_9
    return-object v1

    .line 895
    :catch_a
    move-exception v0

    .line 896
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 897
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 899
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getSimState()I
    .registers 3

    .prologue
    .line 834
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 836
    const/4 v1, 0x1

    .line 851
    :goto_f
    return v1

    .line 838
    :cond_10
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 839
    const/4 v1, 0x2

    goto :goto_f

    .line 841
    :cond_1a
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 842
    const/4 v1, 0x3

    goto :goto_f

    .line 844
    :cond_24
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 845
    const/4 v1, 0x4

    goto :goto_f

    .line 847
    :cond_2e
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 848
    const/4 v1, 0x5

    goto :goto_f

    .line 851
    :cond_38
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 955
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 960
    :goto_9
    return-object v1

    .line 956
    :catch_a
    move-exception v0

    .line 957
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 958
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 960
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1103
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1108
    :goto_9
    return-object v1

    .line 1104
    :catch_a
    move-exception v0

    .line 1105
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1106
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1108
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1048
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1053
    :goto_9
    return-object v1

    .line 1049
    :catch_a
    move-exception v0

    .line 1050
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1051
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1053
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getVoiceMessageCount()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1085
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1090
    :goto_9
    return v1

    .line 1086
    :catch_a
    move-exception v0

    .line 1087
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1088
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1090
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getVoiceNetworkType()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 680
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 681
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 682
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkType()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_e

    move-result v2

    .line 692
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    :goto_b
    return v2

    .line 687
    :catch_c
    move-exception v0

    .line 689
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_b

    .line 690
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_e
    move-exception v0

    .line 692
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_b
.end method

.method public hasIccCard()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 812
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 818
    :goto_9
    return v1

    .line 813
    :catch_a
    move-exception v0

    .line 815
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 816
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 818
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isNetworkRoaming()Z
    .registers 3

    .prologue
    .line 576
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSmsCapable()Z
    .registers 3

    .prologue
    .line 1393
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 1394
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_5
.end method

.method public isVoiceCapable()Z
    .registers 3

    .prologue
    .line 1376
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 1377
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_5
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 1298
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1300
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_a
    const/4 v2, 0x1

    :try_start_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1301
    .local v0, "notifyNow":Ljava/lang/Boolean;
    sget-object v2, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_1a} :catch_1e

    .line 1307
    .end local v0    # "notifyNow":Ljava/lang/Boolean;
    :goto_1a
    return-void

    .line 1298
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_1b
    const-string v1, "<unknown>"

    goto :goto_a

    .line 1304
    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    :catch_1e
    move-exception v2

    goto :goto_1a

    .line 1302
    :catch_20
    move-exception v2

    goto :goto_1a
.end method

.method public setCellInfoListRate(I)V
    .registers 3
    .param p1, "rateInMillis"    # I

    .prologue
    .line 1443
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1447
    :goto_7
    return-void

    .line 1445
    :catch_8
    move-exception v0

    goto :goto_7

    .line 1444
    :catch_a
    move-exception v0

    goto :goto_7
.end method
