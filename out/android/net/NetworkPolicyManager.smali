.class public Landroid/net/NetworkPolicyManager;
.super Ljava/lang/Object;
.source "NetworkPolicyManager.java"


# static fields
.field private static final ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "android.net.NETWORK_TEMPLATE"

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_REJECT_METERED_BACKGROUND:I = 0x1

.field public static final RULE_ALLOW_ALL:I = 0x0

.field public static final RULE_REJECT_METERED:I = 0x1


# instance fields
.field private mService:Landroid/net/INetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/INetworkPolicyManager;)V
    .registers 4
    .param p1, "service"    # Landroid/net/INetworkPolicyManager;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_d

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing INetworkPolicyManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_d
    iput-object p1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    .line 72
    return-void
.end method

.method public static computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .registers 10
    .param p0, "currentTime"    # J
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 160
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    .line 161
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to compute boundary without cycleDay"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 164
    :cond_f
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p2, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 165
    .local v2, "now":Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 168
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 169
    .local v0, "cycle":Landroid/text/format/Time;
    iput v6, v0, Landroid/text/format/Time;->second:I

    iput v6, v0, Landroid/text/format/Time;->minute:I

    iput v6, v0, Landroid/text/format/Time;->hour:I

    .line 170
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    iget v4, p2, Landroid/net/NetworkPolicy;->cycleLength:I

    invoke-static {v0, v3, v4}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;II)V

    .line 172
    invoke-static {v0, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    if-ltz v3, :cond_56

    .line 175
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 176
    .local v1, "last":Landroid/text/format/Time;
    iput v6, v1, Landroid/text/format/Time;->second:I

    iput v6, v1, Landroid/text/format/Time;->minute:I

    iput v6, v1, Landroid/text/format/Time;->hour:I

    .line 178
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleLength:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5b

    .line 179
    iput v5, v1, Landroid/text/format/Time;->monthDay:I

    .line 180
    iget v3, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroid/text/format/Time;->month:I

    .line 187
    :cond_49
    :goto_49
    invoke-virtual {v1, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 189
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 190
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    iget v4, p2, Landroid/net/NetworkPolicy;->cycleLength:I

    invoke-static {v0, v3, v4}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;II)V

    .line 193
    .end local v1    # "last":Landroid/text/format/Time;
    :cond_56
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    return-wide v3

    .line 181
    .restart local v1    # "last":Landroid/text/format/Time;
    :cond_5b
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleLength:I

    if-ne v3, v5, :cond_66

    .line 182
    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x7

    iput v3, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_49

    .line 183
    :cond_66
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleLength:I

    if-nez v3, :cond_49

    .line 184
    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_49
.end method

.method public static computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .registers 10
    .param p0, "currentTime"    # J
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 198
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    .line 199
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to compute boundary without cycleDay"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    :cond_f
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p2, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, "now":Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 206
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 207
    .local v0, "cycle":Landroid/text/format/Time;
    iput v6, v0, Landroid/text/format/Time;->second:I

    iput v6, v0, Landroid/text/format/Time;->minute:I

    iput v6, v0, Landroid/text/format/Time;->hour:I

    .line 208
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    iget v4, p2, Landroid/net/NetworkPolicy;->cycleLength:I

    invoke-static {v0, v3, v4}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;II)V

    .line 210
    invoke-static {v0, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    if-gtz v3, :cond_56

    .line 213
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 214
    .local v1, "next":Landroid/text/format/Time;
    iput v6, v1, Landroid/text/format/Time;->second:I

    iput v6, v1, Landroid/text/format/Time;->minute:I

    iput v6, v1, Landroid/text/format/Time;->hour:I

    .line 216
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleLength:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5b

    .line 217
    iput v5, v1, Landroid/text/format/Time;->monthDay:I

    .line 218
    iget v3, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/text/format/Time;->month:I

    .line 225
    :cond_49
    :goto_49
    invoke-virtual {v1, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 227
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 228
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    iget v4, p2, Landroid/net/NetworkPolicy;->cycleLength:I

    invoke-static {v0, v3, v4}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;II)V

    .line 231
    .end local v1    # "next":Landroid/text/format/Time;
    :cond_56
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    return-wide v3

    .line 219
    .restart local v1    # "next":Landroid/text/format/Time;
    :cond_5b
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleLength:I

    if-ne v3, v5, :cond_66

    .line 220
    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x7

    iput v3, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_49

    .line 221
    :cond_66
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleLength:I

    if-nez v3, :cond_49

    .line 222
    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_49
.end method

.method public static dumpPolicy(Ljava/io/PrintWriter;I)V
    .registers 3
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "policy"    # I

    .prologue
    .line 314
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 315
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    .line 316
    const-string v0, "REJECT_METERED_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 318
    :cond_e
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public static dumpRules(Ljava/io/PrintWriter;I)V
    .registers 3
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "rules"    # I

    .prologue
    .line 323
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 324
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    .line 325
    const-string v0, "REJECT_METERED"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 327
    :cond_e
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-string/jumbo v0, "netpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method public static isUidValidForPolicy(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 282
    const/4 v0, 0x0

    .line 309
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static snapToCycleDay(Landroid/text/format/Time;I)V
    .registers 4
    .param p0, "time"    # Landroid/text/format/Time;
    .param p1, "cycleDay"    # I

    .prologue
    const/4 v1, 0x1

    .line 241
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    if-le p1, v0, :cond_17

    .line 243
    iget v0, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 244
    iput v1, p0, Landroid/text/format/Time;->monthDay:I

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 249
    :goto_13
    invoke-virtual {p0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 250
    return-void

    .line 247
    :cond_17
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    goto :goto_13
.end method

.method public static snapToCycleDay(Landroid/text/format/Time;II)V
    .registers 6
    .param p0, "time"    # Landroid/text/format/Time;
    .param p1, "cycleDay"    # I
    .param p2, "cycleLength"    # I

    .prologue
    const/4 v2, 0x1

    .line 258
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1d

    .line 260
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    if-le p1, v0, :cond_1a

    .line 262
    iget v0, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 263
    iput v2, p0, Landroid/text/format/Time;->monthDay:I

    .line 264
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 271
    :cond_16
    :goto_16
    invoke-virtual {p0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 272
    return-void

    .line 266
    :cond_1a
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    goto :goto_16

    .line 268
    :cond_1d
    if-ne p2, v2, :cond_16

    .line 269
    iget v0, p0, Landroid/text/format/Time;->monthDay:I

    iget v1, p0, Landroid/text/format/Time;->weekDay:I

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    goto :goto_16
.end method


# virtual methods
.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .registers 3

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 132
    :goto_6
    return-object v1

    .line 131
    :catch_7
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRestrictBackground()Z
    .registers 3

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 147
    :goto_6
    return v1

    .line 146
    :catch_7
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getUidPolicy(I)I
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 95
    :goto_6
    return v1

    .line 94
    :catch_7
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getUidsWithPolicy(I)[I
    .registers 4
    .param p1, "policy"    # I

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->getUidsWithPolicy(I)[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 103
    :goto_6
    return-object v1

    .line 102
    :catch_7
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_6
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 112
    :goto_5
    return-void

    .line 110
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .registers 3
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 126
    :goto_5
    return-void

    .line 124
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setRestrictBackground(Z)V
    .registers 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 141
    :goto_5
    return-void

    .line 139
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setUidPolicy(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 89
    :goto_5
    return-void

    .line 87
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 119
    :goto_5
    return-void

    .line 117
    :catch_6
    move-exception v0

    goto :goto_5
.end method
