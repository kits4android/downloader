.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field public final isThemeable:Z

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 593
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    .prologue
    const/high16 v3, 0x3f800000

    .line 260
    const/4 v1, 0x4

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIFFZ)V

    .line 264
    return-void
.end method

.method private constructor <init>(IIFFZ)V
    .registers 6
    .param p1, "compFlags"    # I
    .param p2, "dens"    # I
    .param p3, "scale"    # F
    .param p4, "invertedScale"    # F
    .param p5, "isThemeable"    # Z

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 253
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 254
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 255
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 256
    iput-boolean p5, p0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .registers 16
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v5, 0x0

    .line 103
    .local v5, "compatFlags":I
    iget-boolean v9, p1, Landroid/content/pm/ApplicationInfo;->isThemeable:Z

    iput-boolean v9, p0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    .line 105
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v9, :cond_14

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v9, :cond_14

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v9, :cond_54

    .line 108
    :cond_14
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v9, :cond_3e

    iget v7, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 111
    .local v7, "required":I
    :goto_1a
    if-nez v7, :cond_1e

    .line 112
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 114
    :cond_1e
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v9, :cond_41

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 116
    .local v4, "compat":I
    :goto_24
    if-ge v4, v7, :cond_27

    .line 117
    move v4, v7

    .line 119
    :cond_27
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 121
    .local v6, "largest":I
    const/16 v9, 0x140

    if-le v7, v9, :cond_43

    .line 128
    or-int/lit8 v5, v5, 0x4

    .line 145
    :cond_2f
    :goto_2f
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 146
    const/high16 v9, 0x3f800000

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 147
    const/high16 v9, 0x3f800000

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 247
    .end local v4    # "compat":I
    .end local v6    # "largest":I
    .end local v7    # "required":I
    :goto_3b
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 248
    return-void

    .line 108
    :cond_3e
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_1a

    .restart local v7    # "required":I
    :cond_41
    move v4, v7

    .line 114
    goto :goto_24

    .line 129
    .restart local v4    # "compat":I
    .restart local v6    # "largest":I
    :cond_43
    if-eqz v6, :cond_4a

    if-le p3, v6, :cond_4a

    .line 133
    or-int/lit8 v5, v5, 0xa

    goto :goto_2f

    .line 134
    :cond_4a
    if-lt v4, p3, :cond_4f

    .line 137
    or-int/lit8 v5, v5, 0x4

    goto :goto_2f

    .line 138
    :cond_4f
    if-eqz p4, :cond_2f

    .line 141
    or-int/lit8 v5, v5, 0x8

    goto :goto_2f

    .line 154
    .end local v4    # "compat":I
    .end local v6    # "largest":I
    .end local v7    # "required":I
    :cond_54
    const/4 v0, 0x2

    .line 160
    .local v0, "EXPANDABLE":I
    const/16 v1, 0x8

    .line 166
    .local v1, "LARGE_SCREENS":I
    const/16 v2, 0x20

    .line 168
    .local v2, "XLARGE_SCREENS":I
    const/4 v8, 0x0

    .line 172
    .local v8, "sizeInfo":I
    const/4 v3, 0x0

    .line 174
    .local v3, "anyResizeable":Z
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_68

    .line 175
    or-int/lit8 v8, v8, 0x8

    .line 176
    const/4 v3, 0x1

    .line 177
    if-nez p4, :cond_68

    .line 181
    or-int/lit8 v8, v8, 0x22

    .line 184
    :cond_68
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x80000

    and-int/2addr v9, v10

    if-eqz v9, :cond_74

    .line 185
    const/4 v3, 0x1

    .line 186
    if-nez p4, :cond_74

    .line 187
    or-int/lit8 v8, v8, 0x22

    .line 190
    :cond_74
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x1000

    if-eqz v9, :cond_7d

    .line 191
    const/4 v3, 0x1

    .line 192
    or-int/lit8 v8, v8, 0x2

    .line 195
    :cond_7d
    if-eqz p4, :cond_81

    .line 200
    and-int/lit8 v8, v8, -0x3

    .line 203
    :cond_81
    or-int/lit8 v5, v5, 0x8

    .line 204
    and-int/lit8 v9, p2, 0xf

    packed-switch v9, :pswitch_data_e6

    .line 223
    :cond_88
    :goto_88
    const/high16 v9, 0x10000000

    and-int/2addr v9, p2

    if-eqz v9, :cond_ca

    .line 224
    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_c5

    .line 225
    and-int/lit8 v5, v5, -0x9

    .line 234
    :cond_93
    :goto_93
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_cf

    .line 235
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 236
    const/high16 v9, 0x3f800000

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 237
    const/high16 v9, 0x3f800000

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_3b

    .line 206
    :pswitch_a6
    and-int/lit8 v9, v8, 0x20

    if-eqz v9, :cond_ac

    .line 207
    and-int/lit8 v5, v5, -0x9

    .line 209
    :cond_ac
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x80000

    and-int/2addr v9, v10

    if-eqz v9, :cond_88

    .line 210
    or-int/lit8 v5, v5, 0x4

    goto :goto_88

    .line 214
    :pswitch_b6
    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_bc

    .line 215
    and-int/lit8 v5, v5, -0x9

    .line 217
    :cond_bc
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_88

    .line 218
    or-int/lit8 v5, v5, 0x4

    goto :goto_88

    .line 226
    :cond_c5
    if-nez v3, :cond_93

    .line 227
    or-int/lit8 v5, v5, 0x2

    goto :goto_93

    .line 230
    :cond_ca
    and-int/lit8 v5, v5, -0x9

    .line 231
    or-int/lit8 v5, v5, 0x4

    goto :goto_93

    .line 239
    :cond_cf
    const/16 v9, 0xa0

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 240
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v9, v9

    const/high16 v10, 0x43200000

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 242
    const/high16 v9, 0x3f800000

    iget v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 243
    or-int/lit8 v5, v5, 0x1

    goto/16 :goto_3b

    .line 204
    :pswitch_data_e6
    .packed-switch 0x3
        :pswitch_b6
        :pswitch_a6
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/content/res/CompatibilityInfo$1;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_25

    :goto_22
    iput-boolean v0, p0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    .line 612
    return-void

    .line 611
    :cond_25
    const/4 v0, 0x0

    goto :goto_22
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/res/CompatibilityInfo$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .registers 16
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "outDm"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 486
    iget v11, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 487
    .local v11, "width":I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 489
    .local v1, "height":I
    if-ge v11, v1, :cond_45

    .line 490
    move v9, v11

    .line 491
    .local v9, "shortSize":I
    move v2, v1

    .line 496
    .local v2, "longSize":I
    :goto_8
    const/high16 v12, 0x43a00000

    iget v13, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f000000

    add-float/2addr v12, v13

    float-to-int v5, v12

    .line 497
    .local v5, "newShortSize":I
    int-to-float v12, v2

    int-to-float v13, v9

    div-float v0, v12, v13

    .line 498
    .local v0, "aspect":F
    const v12, 0x3fe3bbbc

    cmpl-float v12, v0, v12

    if-lez v12, :cond_1f

    .line 499
    const v0, 0x3fe3bbbc

    .line 501
    :cond_1f
    int-to-float v12, v5

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f000000

    add-float/2addr v12, v13

    float-to-int v4, v12

    .line 503
    .local v4, "newLongSize":I
    if-ge v11, v1, :cond_48

    .line 504
    move v6, v5

    .line 505
    .local v6, "newWidth":I
    move v3, v4

    .line 511
    .local v3, "newHeight":I
    :goto_29
    int-to-float v12, v11

    int-to-float v13, v6

    div-float v10, v12, v13

    .line 512
    .local v10, "sw":F
    int-to-float v12, v1

    int-to-float v13, v3

    div-float v8, v12, v13

    .line 513
    .local v8, "sh":F
    cmpg-float v12, v10, v8

    if-gez v12, :cond_4b

    move v7, v10

    .line 514
    .local v7, "scale":F
    :goto_36
    const/high16 v12, 0x3f800000

    cmpg-float v12, v7, v12

    if-gez v12, :cond_3e

    .line 515
    const/high16 v7, 0x3f800000

    .line 518
    :cond_3e
    if-eqz p1, :cond_44

    .line 519
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 520
    iput v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 523
    :cond_44
    return v7

    .line 493
    .end local v0    # "aspect":F
    .end local v2    # "longSize":I
    .end local v3    # "newHeight":I
    .end local v4    # "newLongSize":I
    .end local v5    # "newShortSize":I
    .end local v6    # "newWidth":I
    .end local v7    # "scale":F
    .end local v8    # "sh":F
    .end local v9    # "shortSize":I
    .end local v10    # "sw":F
    :cond_45
    move v9, v1

    .line 494
    .restart local v9    # "shortSize":I
    move v2, v11

    .restart local v2    # "longSize":I
    goto :goto_8

    .line 507
    .restart local v0    # "aspect":F
    .restart local v4    # "newLongSize":I
    .restart local v5    # "newShortSize":I
    :cond_48
    move v6, v4

    .line 508
    .restart local v6    # "newWidth":I
    move v3, v5

    .restart local v3    # "newHeight":I
    goto :goto_29

    .restart local v8    # "sh":F
    .restart local v10    # "sw":F
    :cond_4b
    move v7, v8

    .line 513
    goto :goto_36
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .registers 2

    .prologue
    .line 282
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .registers 6
    .param p1, "displayDensity"    # I
    .param p2, "inoutConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 464
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 467
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 468
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 469
    iget v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 471
    :cond_1a
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 472
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 473
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 474
    .local v0, "invertedRatio":F
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 476
    .end local v0    # "invertedRatio":F
    :cond_2e
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 5
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .prologue
    const/high16 v2, 0x3f000000

    .line 438
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_40

    .line 441
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    .line 447
    :goto_b
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 448
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 449
    .local v0, "invertedRatio":F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 450
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 451
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 452
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 453
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 454
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 455
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 457
    .end local v0    # "invertedRatio":F
    :cond_3f
    return-void

    .line 443
    :cond_40
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 444
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_b
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 528
    if-ne p0, p1, :cond_5

    .line 540
    :cond_4
    :goto_4
    return v3

    .line 532
    :cond_5
    :try_start_5
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    .line 533
    .local v2, "oc":Landroid/content/res/CompatibilityInfo;
    iget v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v6, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v5, v6, :cond_11

    move v3, v4

    goto :goto_4

    .line 534
    :cond_11
    iget v5, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v6, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v5, v6, :cond_19

    move v3, v4

    goto :goto_4

    .line 535
    :cond_19
    iget v5, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v6, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_23

    move v3, v4

    goto :goto_4

    .line 536
    :cond_23
    iget v5, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v6, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2d

    move v3, v4

    goto :goto_4

    .line 537
    :cond_2d
    iget-boolean v5, p0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    iget-boolean v6, v2, Landroid/content/res/CompatibilityInfo;->isThemeable:Z
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_31} :catch_35

    if-eq v5, v6, :cond_4

    move v3, v4

    goto :goto_4

    .line 539
    .end local v2    # "oc":Landroid/content/res/CompatibilityInfo;
    :catch_35
    move-exception v1

    .local v1, "e":Ljava/lang/ClassCastException;
    move v3, v4

    .line 540
    goto :goto_4
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 570
    const/16 v0, 0x11

    .line 571
    .local v0, "result":I
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    .line 572
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    .line 573
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 574
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 575
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    :goto_27
    add-int v0, v2, v1

    .line 576
    return v0

    .line 575
    :cond_2a
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public isScalingRequired()Z
    .registers 2

    .prologue
    .line 270
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public neverSupportsScreen()Z
    .registers 2

    .prologue
    .line 278
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public supportsScreen()Z
    .registers 2

    .prologue
    .line 274
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 547
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 551
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 553
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_2d
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_38

    .line 556
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_38
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 559
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_43
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 562
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :cond_4e
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 586
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 589
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 590
    iget-boolean v0, p0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    return-void

    .line 590
    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method
