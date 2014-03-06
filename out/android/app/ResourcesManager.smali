.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field static final DEBUG_CACHE:Z = false

.field static final DEBUG_STATS:Z = true

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field static sAssetRedirectionManager:Lcom/android/internal/app/IAssetRedirectionManager;

.field static sPackageManager:Landroid/content/pm/IPackageManager;

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field final mActiveResources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field final mDefaultDisplayMetrics:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/DisplayAdjustments;",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;

.field final mTmpConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    .line 66
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mTmpConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method private attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/CustomTheme;)Z
    .registers 20
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "theme"    # Landroid/content/res/CustomTheme;

    .prologue
    .line 368
    invoke-static {}, Landroid/app/ResourcesManager;->getAssetRedirectionManager()Lcom/android/internal/app/IAssetRedirectionManager;

    move-result-object v9

    .line 369
    .local v9, "rm":Lcom/android/internal/app/IAssetRedirectionManager;
    if-nez v9, :cond_8

    .line 370
    const/4 v13, 0x0

    .line 417
    :goto_7
    return v13

    .line 372
    :cond_8
    const/4 v8, 0x0

    .line 374
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    :try_start_9
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/CustomTheme;->getThemePackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v13 .. v16}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_99

    move-result-object v8

    .line 377
    :goto_18
    if-eqz v8, :cond_96

    iget-object v13, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v13, :cond_96

    iget-object v13, v8, Landroid/content/pm/PackageInfo;->themeInfos:[Landroid/content/pm/ThemeInfo;

    if-eqz v13, :cond_96

    .line 378
    iget-object v13, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v13, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 379
    .local v12, "themeResDir":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/AssetManager;->attachThemePath(Ljava/lang/String;)I

    move-result v2

    .line 380
    .local v2, "cookie":I
    if-eqz v2, :cond_7e

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/CustomTheme;->getThemePackageName()Ljava/lang/String;

    move-result-object v11

    .line 382
    .local v11, "themePackageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/CustomTheme;->getThemeId()Ljava/lang/String;

    move-result-object v10

    .line 383
    .local v10, "themeId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/AssetManager;->getBasePackageCount()I

    move-result v1

    .line 384
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3b
    if-ge v4, v1, :cond_6e

    .line 385
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->getBasePackageId(I)I

    move-result v6

    .line 393
    .local v6, "packageId":I
    const/4 v13, 0x1

    if-eq v6, v13, :cond_53

    const/16 v13, 0x7f

    if-eq v6, v13, :cond_53

    .line 384
    :cond_50
    :goto_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 398
    :cond_53
    :try_start_53
    invoke-interface {v9, v11, v10, v7}, Lcom/android/internal/app/IAssetRedirectionManager;->getPackageRedirectionMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/PackageRedirectionMap;

    move-result-object v5

    .line 400
    .local v5, "map":Landroid/content/res/PackageRedirectionMap;
    if-eqz v5, :cond_50

    .line 401
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->addRedirections(Landroid/content/res/PackageRedirectionMap;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5e} :catch_5f

    goto :goto_50

    .line 403
    .end local v5    # "map":Landroid/content/res/PackageRedirectionMap;
    :catch_5f
    move-exception v3

    .line 404
    .local v3, "e":Landroid/os/RemoteException;
    const-string v13, "ResourcesManager"

    const-string v14, "Failure accessing package redirection map, removing theme support."

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v2}, Landroid/content/res/AssetManager;->detachThemePath(Ljava/lang/String;I)Z

    .line 406
    const/4 v13, 0x0

    goto :goto_7

    .line 410
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "packageId":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_6e
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/CustomTheme;->getThemePackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->setThemeCookie(I)V

    .line 412
    const/4 v13, 0x1

    goto :goto_7

    .line 414
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v10    # "themeId":Ljava/lang/String;
    .end local v11    # "themePackageName":Ljava/lang/String;
    :cond_7e
    const-string v13, "ResourcesManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to attach theme assets at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v2    # "cookie":I
    .end local v12    # "themeResDir":Ljava/lang/String;
    :cond_96
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 375
    :catch_99
    move-exception v13

    goto/16 :goto_18
.end method

.method private detachThemeAssets(Landroid/content/res/AssetManager;)V
    .registers 5
    .param p1, "assets"    # Landroid/content/res/AssetManager;

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getThemePackageName()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "themePackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getThemeCookie()I

    move-result v0

    .line 423
    .local v0, "themeCookie":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    if-eqz v0, :cond_1e

    .line 424
    invoke-virtual {p1, v1, v0}, Landroid/content/res/AssetManager;->detachThemePath(Ljava/lang/String;I)Z

    .line 425
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    .line 426
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->setThemeCookie(I)V

    .line 427
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->clearRedirections()V

    .line 429
    :cond_1e
    return-void
.end method

.method public static getAssetRedirectionManager()Lcom/android/internal/app/IAssetRedirectionManager;
    .registers 2

    .prologue
    .line 348
    sget-object v1, Landroid/app/ResourcesManager;->sAssetRedirectionManager:Lcom/android/internal/app/IAssetRedirectionManager;

    if-eqz v1, :cond_7

    .line 349
    sget-object v1, Landroid/app/ResourcesManager;->sAssetRedirectionManager:Lcom/android/internal/app/IAssetRedirectionManager;

    .line 353
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 351
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    const-string v1, "assetredirection"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 352
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAssetRedirectionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAssetRedirectionManager;

    move-result-object v1

    sput-object v1, Landroid/app/ResourcesManager;->sAssetRedirectionManager:Lcom/android/internal/app/IAssetRedirectionManager;

    .line 353
    sget-object v1, Landroid/app/ResourcesManager;->sAssetRedirectionManager:Lcom/android/internal/app/IAssetRedirectionManager;

    goto :goto_6
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .registers 2

    .prologue
    .line 69
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 70
    :try_start_3
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_e

    .line 71
    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 73
    :cond_e
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .prologue
    .line 333
    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_7

    .line 335
    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 341
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 337
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 339
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 341
    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    goto :goto_6
.end method


# virtual methods
.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .registers 4
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_13

    .line 149
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)I
    .registers 16
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 250
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    if-nez v12, :cond_b

    .line 251
    new-instance v12, Landroid/content/res/Configuration;

    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    iput-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 253
    :cond_b
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v12

    if-nez v12, :cond_17

    if-nez p2, :cond_17

    .line 256
    const/4 v1, 0x0

    .line 329
    :cond_16
    return v1

    .line 258
    :cond_17
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    .line 259
    .local v1, "changes":I
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->flushDisplayMetricsLocked()V

    .line 260
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 262
    .local v2, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_37

    iget-object v12, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v12, :cond_33

    iget-object v12, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v12, p2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_37

    .line 264
    :cond_33
    iput-object p2, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 265
    or-int/lit16 v1, v1, 0xd00

    .line 271
    :cond_37
    iget-object v12, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v12, :cond_40

    .line 272
    iget-object v12, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v12}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 275
    :cond_40
    invoke-static {p1, v2, p2}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 277
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 280
    const/4 v11, 0x0

    .line 282
    .local v11, "tmpConfig":Landroid/content/res/Configuration;
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .local v6, "i":I
    :goto_4f
    if-ltz v6, :cond_16

    .line 283
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesKey;

    .line 284
    .local v8, "key":Landroid/content/res/ResourcesKey;
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/Resources;

    .line 285
    .local v9, "r":Landroid/content/res/Resources;
    if-eqz v9, :cond_cb

    .line 288
    iget v3, v8, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 289
    .local v3, "displayId":I
    if-nez v3, :cond_c3

    const/4 v7, 0x1

    .line 290
    .local v7, "isDefaultDisplay":Z
    :goto_6e
    move-object v4, v2

    .line 291
    .local v4, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v8}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v5

    .line 292
    .local v5, "hasOverrideConfiguration":Z
    const v12, 0x8000

    and-int/2addr v12, v1

    if-eqz v12, :cond_c5

    const/4 v10, 0x1

    .line 293
    .local v10, "themeChanged":Z
    :goto_7a
    if-eqz v10, :cond_9a

    .line 294
    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 295
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->hasThemeSupport()Z

    move-result v12

    if-eqz v12, :cond_9a

    .line 296
    invoke-direct {p0, v0}, Landroid/app/ResourcesManager;->detachThemeAssets(Landroid/content/res/AssetManager;)V

    .line 297
    iget-object v12, p1, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    invoke-virtual {v12}, Landroid/content/res/CustomTheme;->getThemePackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9a

    .line 298
    iget-object v12, p1, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    invoke-direct {p0, v0, v12}, Landroid/app/ResourcesManager;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/CustomTheme;)Z

    .line 302
    .end local v0    # "am":Landroid/content/res/AssetManager;
    :cond_9a
    if-eqz v7, :cond_9e

    if-eqz v5, :cond_c7

    .line 303
    :cond_9e
    if-nez v11, :cond_a5

    .line 304
    new-instance v11, Landroid/content/res/Configuration;

    .end local v11    # "tmpConfig":Landroid/content/res/Configuration;
    invoke-direct {v11}, Landroid/content/res/Configuration;-><init>()V

    .line 306
    .restart local v11    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_a5
    invoke-virtual {v11, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 307
    if-nez v7, :cond_b1

    .line 308
    invoke-virtual {p0, v3}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 309
    invoke-virtual {p0, v4, v11}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 311
    :cond_b1
    if-eqz v5, :cond_b8

    .line 312
    iget-object v12, v8, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v12}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 314
    :cond_b8
    invoke-virtual {v9, v11, v4, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 318
    :goto_bb
    if-eqz v10, :cond_c0

    .line 319
    invoke-virtual {v9}, Landroid/content/res/Resources;->updateStringCache()V

    .line 282
    .end local v3    # "displayId":I
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "hasOverrideConfiguration":Z
    .end local v7    # "isDefaultDisplay":Z
    .end local v10    # "themeChanged":Z
    :cond_c0
    :goto_c0
    add-int/lit8 v6, v6, -0x1

    goto :goto_4f

    .line 289
    .restart local v3    # "displayId":I
    :cond_c3
    const/4 v7, 0x0

    goto :goto_6e

    .line 292
    .restart local v4    # "dm":Landroid/util/DisplayMetrics;
    .restart local v5    # "hasOverrideConfiguration":Z
    .restart local v7    # "isDefaultDisplay":Z
    :cond_c5
    const/4 v10, 0x0

    goto :goto_7a

    .line 316
    .restart local v10    # "themeChanged":Z
    :cond_c7
    invoke-virtual {v9, p1, v4, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto :goto_bb

    .line 325
    .end local v3    # "displayId":I
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "hasOverrideConfiguration":Z
    .end local v7    # "isDefaultDisplay":Z
    .end local v10    # "themeChanged":Z
    :cond_cb
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_c0
.end method

.method final applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 126
    iput v3, p2, Landroid/content/res/Configuration;->touchscreen:I

    .line 127
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 128
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 129
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 130
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 131
    .local v0, "sl":I
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_43

    .line 132
    const/4 v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->orientation:I

    .line 133
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 140
    :goto_32
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 141
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 142
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 143
    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 144
    return-void

    .line 136
    :cond_43
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    .line 137
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_32
.end method

.method public flushDisplayMetricsLocked()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 83
    return-void
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 86
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMetricsLocked(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "daj"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 90
    if-nez p1, :cond_12

    const/4 v4, 0x1

    .line 91
    .local v4, "isDefaultDisplay":Z
    :goto_3
    if-eqz v4, :cond_14

    iget-object v5, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/DisplayMetrics;

    move-object v2, v5

    .line 92
    .local v2, "dm":Landroid/util/DisplayMetrics;
    :goto_e
    if-eqz v2, :cond_16

    move-object v3, v2

    .line 121
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .local v3, "dm":Ljava/lang/Object;
    :goto_11
    return-object v3

    .line 90
    .end local v3    # "dm":Ljava/lang/Object;
    .end local v4    # "isDefaultDisplay":Z
    :cond_12
    const/4 v4, 0x0

    goto :goto_3

    .line 91
    .restart local v4    # "isDefaultDisplay":Z
    :cond_14
    const/4 v2, 0x0

    goto :goto_e

    .line 95
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    :cond_16
    new-instance v2, Landroid/util/DisplayMetrics;

    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 97
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 98
    .local v1, "displayManager":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v1, :cond_26

    .line 100
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    move-object v3, v2

    .line 101
    .restart local v3    # "dm":Ljava/lang/Object;
    goto :goto_11

    .line 104
    .end local v3    # "dm":Ljava/lang/Object;
    :cond_26
    if-eqz v4, :cond_2d

    .line 105
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_2d
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 109
    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_38

    .line 110
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_36
    move-object v3, v2

    .line 121
    .restart local v3    # "dm":Ljava/lang/Object;
    goto :goto_11

    .line 116
    .end local v3    # "dm":Ljava/lang/Object;
    :cond_38
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_36
.end method

.method public getTopLevelResources(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)Landroid/content/res/Resources;
    .registers 24
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    .line 164
    move-object/from16 v0, p4

    iget v6, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 165
    .local v6, "scale":F
    move-object/from16 v0, p4

    iget-boolean v7, v0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    .line 166
    .local v7, "isThemeable":Z
    new-instance v2, Landroid/content/res/ResourcesKey;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FZLandroid/os/IBinder;)V

    .line 169
    .local v2, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    .line 174
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/ref/WeakReference;

    .line 175
    .local v17, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v17, :cond_38

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v8, v3

    .line 177
    .local v8, "r":Landroid/content/res/Resources;
    :goto_29
    if-eqz v8, :cond_3a

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 182
    monitor-exit p0

    move-object v14, v8

    .line 244
    :goto_37
    return-object v14

    .line 175
    .end local v8    # "r":Landroid/content/res/Resources;
    :cond_38
    const/4 v8, 0x0

    goto :goto_29

    .line 184
    .restart local v8    # "r":Landroid/content/res/Resources;
    :cond_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_16 .. :try_end_3b} :catchall_51

    .line 191
    new-instance v9, Landroid/content/res/AssetManager;

    invoke-direct {v9}, Landroid/content/res/AssetManager;-><init>()V

    .line 192
    .local v9, "assets":Landroid/content/res/AssetManager;
    move-object/from16 v0, p4

    iget-boolean v3, v0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    invoke-virtual {v9, v3}, Landroid/content/res/AssetManager;->setThemeSupport(Z)V

    .line 193
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_54

    .line 194
    const/4 v14, 0x0

    goto :goto_37

    .line 184
    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v9    # "assets":Landroid/content/res/AssetManager;
    .end local v17    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_51
    move-exception v3

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v3

    .line 198
    .restart local v8    # "r":Landroid/content/res/Resources;
    .restart local v9    # "assets":Landroid/content/res/AssetManager;
    .restart local v17    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_54
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 200
    .local v10, "dm":Landroid/util/DisplayMetrics;
    if-nez p2, :cond_da

    const/16 v16, 0x1

    .line 201
    .local v16, "isDefaultDisplay":Z
    :goto_60
    invoke-virtual {v2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v15

    .line 202
    .local v15, "hasOverrideConfig":Z
    if-eqz v16, :cond_68

    if-eqz v15, :cond_dd

    .line 203
    :cond_68
    new-instance v11, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 204
    .local v11, "config":Landroid/content/res/Configuration;
    if-nez v16, :cond_78

    .line 205
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 207
    :cond_78
    if-eqz v15, :cond_7f

    .line 208
    iget-object v3, v2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 215
    :cond_7f
    :goto_7f
    move-object/from16 v0, p4

    iget-boolean v3, v0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    if-eqz v3, :cond_a4

    if-eqz v11, :cond_a4

    .line 216
    iget-object v3, v11, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    if-nez v3, :cond_91

    .line 217
    invoke-static {}, Landroid/content/res/CustomTheme;->getBootTheme()Landroid/content/res/CustomTheme;

    move-result-object v3

    iput-object v3, v11, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    .line 220
    :cond_91
    iget-object v3, v11, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    invoke-virtual {v3}, Landroid/content/res/CustomTheme;->getThemePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a4

    .line 221
    iget-object v3, v11, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Landroid/app/ResourcesManager;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/CustomTheme;)Z

    .line 225
    :cond_a4
    new-instance v8, Landroid/content/res/Resources;

    .end local v8    # "r":Landroid/content/res/Resources;
    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 232
    .restart local v8    # "r":Landroid/content/res/Resources;
    monitor-enter p0

    .line 233
    :try_start_ae
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v17, Ljava/lang/ref/WeakReference;

    .line 234
    .restart local v17    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v17, :cond_e2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v14, v3

    .line 235
    .local v14, "existing":Landroid/content/res/Resources;
    :goto_c1
    if-eqz v14, :cond_e4

    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 238
    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    .line 239
    monitor-exit p0

    goto/16 :goto_37

    .line 245
    .end local v14    # "existing":Landroid/content/res/Resources;
    .end local v17    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_d7
    move-exception v3

    monitor-exit p0
    :try_end_d9
    .catchall {:try_start_ae .. :try_end_d9} :catchall_d7

    throw v3

    .line 200
    .end local v11    # "config":Landroid/content/res/Configuration;
    .end local v15    # "hasOverrideConfig":Z
    .end local v16    # "isDefaultDisplay":Z
    .restart local v17    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_da
    const/16 v16, 0x0

    goto :goto_60

    .line 211
    .restart local v15    # "hasOverrideConfig":Z
    .restart local v16    # "isDefaultDisplay":Z
    :cond_dd
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    .restart local v11    # "config":Landroid/content/res/Configuration;
    goto :goto_7f

    .line 234
    :cond_e2
    const/4 v14, 0x0

    goto :goto_c1

    .line 243
    .restart local v14    # "existing":Landroid/content/res/Resources;
    :cond_e4
    :try_start_e4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    monitor-exit p0
    :try_end_f1
    .catchall {:try_start_e4 .. :try_end_f1} :catchall_d7

    move-object v14, v8

    goto/16 :goto_37
.end method
