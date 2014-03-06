.class public Landroid/hardware/GeomagneticField;
.super Ljava/lang/Object;
.source "GeomagneticField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/GeomagneticField$LegendreTable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BASE_TIME:J

.field private static final DELTA_G:[[F

.field private static final DELTA_H:[[F

.field private static final EARTH_REFERENCE_RADIUS_KM:F = 6371.2f

.field private static final EARTH_SEMI_MAJOR_AXIS_KM:F = 6378.137f

.field private static final EARTH_SEMI_MINOR_AXIS_KM:F = 6356.7524f

.field private static final G_COEFF:[[F

.field private static final H_COEFF:[[F

.field private static final SCHMIDT_QUASI_NORM_FACTORS:[[F


# instance fields
.field private mGcLatitudeRad:F

.field private mGcLongitudeRad:F

.field private mGcRadiusKm:F

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 33
    const-class v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_21b

    move v0, v1

    :goto_e
    sput-boolean v0, Landroid/hardware/GeomagneticField;->$assertionsDisabled:Z

    .line 52
    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v3, v1, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    aput-object v3, v0, v2

    new-array v3, v5, [F

    fill-array-data v3, :array_21e

    aput-object v3, v0, v1

    new-array v3, v6, [F

    fill-array-data v3, :array_226

    aput-object v3, v0, v5

    new-array v3, v7, [F

    fill-array-data v3, :array_230

    aput-object v3, v0, v6

    const/4 v3, 0x5

    new-array v3, v3, [F

    fill-array-data v3, :array_23c

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const/4 v4, 0x6

    new-array v4, v4, [F

    fill-array-data v4, :array_24a

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const/4 v4, 0x7

    new-array v4, v4, [F

    fill-array-data v4, :array_25a

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_26c

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const/16 v4, 0x9

    new-array v4, v4, [F

    fill-array-data v4, :array_280

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const/16 v4, 0xa

    new-array v4, v4, [F

    fill-array-data v4, :array_296

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const/16 v4, 0xb

    new-array v4, v4, [F

    fill-array-data v4, :array_2ae

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const/16 v4, 0xc

    new-array v4, v4, [F

    fill-array-data v4, :array_2c8

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const/16 v4, 0xd

    new-array v4, v4, [F

    fill-array-data v4, :array_2e4

    aput-object v4, v0, v3

    sput-object v0, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    .line 67
    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v3, v1, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    aput-object v3, v0, v2

    new-array v3, v5, [F

    fill-array-data v3, :array_302

    aput-object v3, v0, v1

    new-array v3, v6, [F

    fill-array-data v3, :array_30a

    aput-object v3, v0, v5

    new-array v3, v7, [F

    fill-array-data v3, :array_314

    aput-object v3, v0, v6

    const/4 v3, 0x5

    new-array v3, v3, [F

    fill-array-data v3, :array_320

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const/4 v4, 0x6

    new-array v4, v4, [F

    fill-array-data v4, :array_32e

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const/4 v4, 0x7

    new-array v4, v4, [F

    fill-array-data v4, :array_33e

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_350

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const/16 v4, 0x9

    new-array v4, v4, [F

    fill-array-data v4, :array_364

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const/16 v4, 0xa

    new-array v4, v4, [F

    fill-array-data v4, :array_37a

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const/16 v4, 0xb

    new-array v4, v4, [F

    fill-array-data v4, :array_392

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const/16 v4, 0xc

    new-array v4, v4, [F

    fill-array-data v4, :array_3ac

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const/16 v4, 0xd

    new-array v4, v4, [F

    fill-array-data v4, :array_3c8

    aput-object v4, v0, v3

    sput-object v0, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    .line 82
    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v3, v1, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    aput-object v3, v0, v2

    new-array v3, v5, [F

    fill-array-data v3, :array_3e6

    aput-object v3, v0, v1

    new-array v3, v6, [F

    fill-array-data v3, :array_3ee

    aput-object v3, v0, v5

    new-array v3, v7, [F

    fill-array-data v3, :array_3f8

    aput-object v3, v0, v6

    const/4 v3, 0x5

    new-array v3, v3, [F

    fill-array-data v3, :array_404

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const/4 v4, 0x6

    new-array v4, v4, [F

    fill-array-data v4, :array_412

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const/4 v4, 0x7

    new-array v4, v4, [F

    fill-array-data v4, :array_422

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_434

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const/16 v4, 0x9

    new-array v4, v4, [F

    fill-array-data v4, :array_448

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const/16 v4, 0xa

    new-array v4, v4, [F

    fill-array-data v4, :array_45e

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const/16 v4, 0xb

    new-array v4, v4, [F

    fill-array-data v4, :array_476

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const/16 v4, 0xc

    new-array v4, v4, [F

    fill-array-data v4, :array_490

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const/16 v4, 0xd

    new-array v4, v4, [F

    fill-array-data v4, :array_4ac

    aput-object v4, v0, v3

    sput-object v0, Landroid/hardware/GeomagneticField;->DELTA_G:[[F

    .line 97
    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v3, v1, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    aput-object v3, v0, v2

    new-array v2, v5, [F

    fill-array-data v2, :array_4ca

    aput-object v2, v0, v1

    new-array v2, v6, [F

    fill-array-data v2, :array_4d2

    aput-object v2, v0, v5

    new-array v2, v7, [F

    fill-array-data v2, :array_4dc

    aput-object v2, v0, v6

    const/4 v2, 0x5

    new-array v2, v2, [F

    fill-array-data v2, :array_4e8

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const/4 v3, 0x6

    new-array v3, v3, [F

    fill-array-data v3, :array_4f6

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x7

    new-array v3, v3, [F

    fill-array-data v3, :array_506

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_518

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x9

    new-array v3, v3, [F

    fill-array-data v3, :array_52c

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const/16 v3, 0xa

    new-array v3, v3, [F

    fill-array-data v3, :array_542

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0xb

    new-array v3, v3, [F

    fill-array-data v3, :array_55a

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const/16 v3, 0xc

    new-array v3, v3, [F

    fill-array-data v3, :array_574

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0xd

    new-array v3, v3, [F

    fill-array-data v3, :array_590

    aput-object v3, v0, v2

    sput-object v0, Landroid/hardware/GeomagneticField;->DELTA_H:[[F

    .line 112
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v2, 0x7da

    invoke-direct {v0, v2, v1, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/hardware/GeomagneticField;->BASE_TIME:J

    .line 118
    sget-object v0, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    array-length v0, v0

    invoke-static {v0}, Landroid/hardware/GeomagneticField;->computeSchmidtQuasiNormFactors(I)[[F

    move-result-object v0

    sput-object v0, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    return-void

    :cond_21b
    move v0, v2

    .line 33
    goto/16 :goto_e

    .line 52
    :array_21e
    .array-data 4
        -0x39198ecd
        -0x3b39b666
    .end array-data

    :array_226
    .array-data 4
        -0x3aea3666
        0x453d219a
        0x44d09333
    .end array-data

    :array_230
    .array-data 4
        0x44a78333
        -0x3aee9ccd
        0x4499fccd
        0x441e8000
    .end array-data

    :array_23c
    .array-data 4
        0x44642666
        0x444a399a
        0x4326b333
        -0x3c4d7333
        0x42b2cccd
    .end array-data

    :array_24a
    .array-data 4
        -0x3c99199a
        0x43b2999a
        0x43484ccd
        -0x3cf2e666
        -0x3cdd0000
        -0x3f066666
    .end array-data

    :array_25a
    .array-data 4
        0x4291999a
        0x42893333
        0x42980000
        -0x3cf2999a
        -0x3e49999a
        0x41533333
        -0x3d643333
    .end array-data

    :array_26c
    .array-data 4
        0x42a10000
        -0x3d69cccd
        -0x3f69999a
        0x42353333
        0x415e6666
        0x41266666
        0x3fd9999a
        0x409ccccd
    .end array-data

    :array_280
    .array-data 4
        0x41c33333
        0x4101999a
        -0x3e980000
        -0x3f4ccccd
        -0x3e65999a
        0x41380000
        0x412e6666
        -0x3e9e6666
        -0x3f933333
    .end array-data

    :array_296
    .array-data 4
        0x40accccd
        0x41166666
        0x4059999a
        -0x3f59999a
        0x40466666
        -0x3eb9999a
        -0x40cccccd
        0x41066666
        -0x3ef80000
        -0x3ede6666
    .end array-data

    :array_2ae
    .array-data 4
        -0x40000000
        -0x3f366666
        0x3f666666
        -0x40733333
        -0x41b33333
        0x40200000
        -0x41666666
        0x400ccccd
        0x40466666
        -0x40800000
        -0x3fcccccd
    .end array-data

    :array_2c8
    .array-data 4
        0x40400000
        -0x40400000
        -0x3ff9999a
        0x3fd9999a
        -0x41000000
        0x3f000000
        -0x40b33333
        0x3ecccccd
        0x3fe66666
        0x3dcccccd
        0x3f333333
        0x40733333
    .end array-data

    :array_2e4
    .array-data 4
        -0x3ff33333
        -0x41b33333
        0x3e99999a
        0x3f800000
        -0x40e66666
        0x3f666666
        -0x42333333
        0x3f000000
        -0x41333333
        -0x41333333
        0x3e4ccccd
        -0x40b33333
        0x0
    .end array-data

    .line 67
    :array_302
    .array-data 4
        0x0
        0x459a8333
    .end array-data

    :array_30a
    .array-data 4
        0x0
        -0x3ad6c4cd
        -0x3beff99a
    .end array-data

    :array_314
    .array-data 4
        0x0
        -0x3cdfcccd
        0x437be666
        -0x3bf9d99a
    .end array-data

    :array_320
    .array-data 4
        0x0
        0x438f3333
        -0x3caccccd
        0x43244ccd
        -0x3c657333
    .end array-data

    :array_32e
    .array-data 4
        0x0
        0x42326666
        0x433ce666
        -0x3d13999a
        0x0
        0x42c9cccd
    .end array-data

    :array_33e
    .array-data 4
        0x0
        -0x3e59999a
        0x42306666
        0x42760000
        -0x3d7b6666
        0x40466666
        0x425c0000
    .end array-data

    :array_350
    .array-data 4
        0x0
        -0x3d986666
        -0x3e573333
        0x40d00000
        0x41c73333
        0x40e00000
        -0x3e226666
        -0x3faccccd
    .end array-data

    :array_364
    .array-data 4
        0x0
        0x41300000
        -0x3e600000
        0x413e6666
        -0x3e74cccd
        0x4185999a
        0x40e00000
        -0x3ed33333
        0x3fd9999a
    .end array-data

    :array_37a
    .array-data 4
        0x0
        -0x3e5c0000
        0x41380000
        0x414ccccd
        -0x3f19999a
        -0x3f133333
        0x41000000
        0x40066666
        -0x3f3ccccd
        0x40e00000
    .end array-data

    :array_392
    .array-data 4
        0x0
        0x40333333
        -0x42333333
        0x40966666
        0x408ccccd
        -0x3f19999a
        -0x40800000
        -0x3f866666
        -0x40000000
        -0x40000000
        -0x3efb3333
    .end array-data

    :array_3ac
    .array-data 4
        0x0
        0x3e4ccccd
        0x3fd9999a
        -0x40e66666
        -0x4019999a
        0x3f666666
        -0x41333333
        -0x3fe00000
        -0x4059999a
        -0x3ff9999a
        -0x400ccccd
        -0x4019999a
    .end array-data

    :array_3c8
    .array-data 4
        0x0
        -0x4099999a
        0x3e99999a
        0x40066666
        -0x3fe00000
        0x3f000000
        0x3f19999a
        0x0
        0x3dcccccd
        0x3e99999a
        -0x4099999a
        -0x41b33333
        0x3f666666
    .end array-data

    .line 82
    :array_3e6
    .array-data 4
        0x4139999a
        0x41840000
    .end array-data

    :array_3ee
    .array-data 4
        -0x3ebe6666
        -0x3f733333
        0x3ff33333
    .end array-data

    :array_3f8
    .array-data 4
        0x3ecccccd
        -0x3f7ccccd
        -0x3fc66666
        -0x3f09999a
    .end array-data

    :array_404
    .array-data 4
        -0x4019999a
        0x40133333
        -0x3ef4cccd
        0x40933333
        -0x3ff9999a
    .end array-data

    :array_412
    .array-data 4
        -0x40800000
        0x3f19999a
        -0x4019999a
        -0x40800000
        0x3f666666
        0x3f800000
    .end array-data

    :array_422
    .array-data 4
        -0x41b33333
        -0x41b33333
        -0x42333333
        0x40000000
        -0x40266666
        -0x41666666
        0x3fd9999a
    .end array-data

    :array_434
    .array-data 4
        0x3dcccccd
        -0x42333333
        -0x40e66666
        0x3fa66666
        0x3ecccccd
        0x3e99999a
        -0x40cccccd
        0x3f19999a
    .end array-data

    :array_448
    .array-data 4
        -0x42333333
        0x3dcccccd
        -0x40e66666
        0x3e4ccccd
        -0x41b33333
        0x3e99999a
        0x3e99999a
        -0x40e66666
        0x3e4ccccd
    .end array-data

    :array_45e
    .array-data 4
        0x0
        -0x42333333
        0x0
        0x3e99999a
        -0x41333333
        -0x41666666
        0x3dcccccd
        -0x42333333
        -0x41333333
        -0x41b33333
    .end array-data

    :array_476
    .array-data 4
        0x0
        0x0
        -0x42333333
        0x3e4ccccd
        0x0
        -0x42333333
        -0x41b33333
        0x0
        -0x42333333
        -0x41b33333
        -0x41b33333
    .end array-data

    :array_490
    .array-data 4
        0x0
        0x0
        0x0
        0x3dcccccd
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x42333333
        0x0
    .end array-data

    :array_4ac
    .array-data 4
        0x0
        0x0
        0x3dcccccd
        0x3dcccccd
        -0x42333333
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x42333333
        0x3dcccccd
    .end array-data

    .line 97
    :array_4ca
    .array-data 4
        0x0
        -0x3e30cccd
    .end array-data

    :array_4d2
    .array-data 4
        0x0
        -0x3e4c0000
        -0x3ec33333
    .end array-data

    :array_4dc
    .array-data 4
        0x0
        0x40e9999a
        -0x3f866666
        -0x3fd9999a
    .end array-data

    :array_4e8
    .array-data 4
        0x0
        0x3f8ccccd
        0x402ccccd
        0x4079999a
        -0x40b33333
    .end array-data

    :array_4f6
    .array-data 4
        0x0
        0x3ecccccd
        0x3fe66666
        0x3f99999a
        0x40800000
        -0x40e66666
    .end array-data

    :array_506
    .array-data 4
        0x0
        -0x41b33333
        -0x3ff9999a
        -0x41333333
        -0x40e66666
        0x3f000000
        0x3f666666
    .end array-data

    :array_518
    .array-data 4
        0x0
        0x3f333333
        0x3e99999a
        -0x42333333
        -0x42333333
        -0x40b33333
        -0x41666666
        0x3e99999a
    .end array-data

    :array_52c
    .array-data 4
        0x0
        -0x42333333
        0x3e4ccccd
        0x3ecccccd
        0x3ecccccd
        0x3dcccccd
        -0x42333333
        0x3ecccccd
        0x3e99999a
    .end array-data

    :array_542
    .array-data 4
        0x0
        0x0
        -0x41b33333
        0x0
        -0x42333333
        0x3dcccccd
        0x0
        -0x41b33333
        0x3e99999a
        0x3e4ccccd
    .end array-data

    :array_55a
    .array-data 4
        0x0
        0x3dcccccd
        -0x42333333
        0x0
        -0x42333333
        -0x42333333
        0x0
        -0x42333333
        -0x41b33333
        0x0
        -0x42333333
    .end array-data

    :array_574
    .array-data 4
        0x0
        0x0
        0x3dcccccd
        0x0
        0x3dcccccd
        0x0
        0x3dcccccd
        0x0
        -0x42333333
        -0x42333333
        0x0
        -0x42333333
    .end array-data

    :array_590
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3dcccccd
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(FFFJ)V
    .registers 32
    .param p1, "gdLatitudeDeg"    # F
    .param p2, "gdLongitudeDeg"    # F
    .param p3, "altitudeMeters"    # F
    .param p4, "timeMillis"    # J

    .prologue
    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 139
    sget-object v20, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    move-object/from16 v0, v20

    array-length v2, v0

    .line 143
    .local v2, "MAX_N":I
    const v20, 0x42b3ffff

    const v21, -0x3d4c0001

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 145
    invoke-direct/range {p0 .. p3}, Landroid/hardware/GeomagneticField;->computeGeocentricCoordinates(FFF)V

    .line 149
    sget-boolean v20, Landroid/hardware/GeomagneticField;->$assertionsDisabled:Z

    if-nez v20, :cond_3b

    sget-object v20, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    sget-object v21, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3b

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 155
    :cond_3b
    new-instance v13, Landroid/hardware/GeomagneticField$LegendreTable;

    add-int/lit8 v20, v2, -0x1

    const-wide v21, 0x3ff921fb54442d18L

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    sub-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/hardware/GeomagneticField$LegendreTable;-><init>(IF)V

    .line 161
    .local v13, "legendre":Landroid/hardware/GeomagneticField$LegendreTable;
    add-int/lit8 v20, v2, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 162
    .local v16, "relativeRadiusPower":[F
    const/16 v20, 0x0

    const/high16 v21, 0x3f800000

    aput v21, v16, v20

    .line 163
    const/16 v20, 0x1

    const v21, 0x45c7199a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcRadiusKm:F

    move/from16 v22, v0

    div-float v21, v21, v22

    aput v21, v16, v20

    .line 164
    const/4 v9, 0x2

    .local v9, "i":I
    :goto_7b
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_93

    .line 165
    add-int/lit8 v20, v9, -0x1

    aget v20, v16, v20

    const/16 v21, 0x1

    aget v21, v16, v21

    mul-float v20, v20, v21

    aput v20, v16, v9

    .line 164
    add-int/lit8 v9, v9, 0x1

    goto :goto_7b

    .line 171
    :cond_93
    new-array v0, v2, [F

    move-object/from16 v17, v0

    .line 172
    .local v17, "sinMLon":[F
    new-array v3, v2, [F

    .line 173
    .local v3, "cosMLon":[F
    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v17, v20

    .line 174
    const/16 v20, 0x0

    const/high16 v21, 0x3f800000

    aput v21, v3, v20

    .line 175
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    aput v21, v17, v20

    .line 176
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    aput v21, v3, v20

    .line 178
    const/4 v14, 0x2

    .local v14, "m":I
    :goto_d6
    if-ge v14, v2, :cond_105

    .line 181
    shr-int/lit8 v18, v14, 0x1

    .line 182
    .local v18, "x":I
    sub-int v20, v14, v18

    aget v20, v17, v20

    aget v21, v3, v18

    mul-float v20, v20, v21

    sub-int v21, v14, v18

    aget v21, v3, v21

    aget v22, v17, v18

    mul-float v21, v21, v22

    add-float v20, v20, v21

    aput v20, v17, v14

    .line 183
    sub-int v20, v14, v18

    aget v20, v3, v20

    aget v21, v3, v18

    mul-float v20, v20, v21

    sub-int v21, v14, v18

    aget v21, v17, v21

    aget v22, v17, v18

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    aput v20, v3, v14

    .line 178
    add-int/lit8 v14, v14, 0x1

    goto :goto_d6

    .line 186
    .end local v18    # "x":I
    :cond_105
    const/high16 v20, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 187
    .local v10, "inverseCosLatitude":F
    sget-wide v20, Landroid/hardware/GeomagneticField;->BASE_TIME:J

    sub-long v20, p4, v20

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x50eaf626

    div-float v19, v20, v21

    .line 194
    .local v19, "yearsSinceBase":F
    const/4 v5, 0x0

    .line 195
    .local v5, "gcX":F
    const/4 v6, 0x0

    .line 196
    .local v6, "gcY":F
    const/4 v7, 0x0

    .line 198
    .local v7, "gcZ":F
    const/4 v15, 0x1

    .local v15, "n":I
    :goto_12f
    if-ge v15, v2, :cond_1d8

    .line 199
    const/4 v14, 0x0

    :goto_132
    if-gt v14, v15, :cond_1d4

    .line 201
    sget-object v20, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    aget-object v20, v20, v15

    aget v20, v20, v14

    sget-object v21, Landroid/hardware/GeomagneticField;->DELTA_G:[[F

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v21, v21, v19

    add-float v4, v20, v21

    .line 202
    .local v4, "g":F
    sget-object v20, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    aget-object v20, v20, v15

    aget v20, v20, v14

    sget-object v21, Landroid/hardware/GeomagneticField;->DELTA_H:[[F

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v21, v21, v19

    add-float v8, v20, v21

    .line 209
    .local v8, "h":F
    add-int/lit8 v20, v15, 0x2

    aget v20, v16, v20

    aget v21, v3, v14

    mul-float v21, v21, v4

    aget v22, v17, v14

    mul-float v22, v22, v8

    add-float v21, v21, v22

    mul-float v20, v20, v21

    iget-object v0, v13, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    move-object/from16 v21, v0

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v20, v20, v21

    sget-object v21, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v20, v20, v21

    add-float v5, v5, v20

    .line 216
    add-int/lit8 v20, v15, 0x2

    aget v20, v16, v20

    int-to-float v0, v14

    move/from16 v21, v0

    mul-float v20, v20, v21

    aget v21, v17, v14

    mul-float v21, v21, v4

    aget v22, v3, v14

    mul-float v22, v22, v8

    sub-float v21, v21, v22

    mul-float v20, v20, v21

    iget-object v0, v13, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    move-object/from16 v21, v0

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v20, v20, v21

    sget-object v21, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v20, v20, v21

    mul-float v20, v20, v10

    add-float v6, v6, v20

    .line 223
    add-int/lit8 v20, v15, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-int/lit8 v21, v15, 0x2

    aget v21, v16, v21

    mul-float v20, v20, v21

    aget v21, v3, v14

    mul-float v21, v21, v4

    aget v22, v17, v14

    mul-float v22, v22, v8

    add-float v21, v21, v22

    mul-float v20, v20, v21

    iget-object v0, v13, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    move-object/from16 v21, v0

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v20, v20, v21

    sget-object v21, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v20, v20, v21

    sub-float v7, v7, v20

    .line 199
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_132

    .line 198
    .end local v4    # "g":F
    .end local v8    # "h":F
    :cond_1d4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_12f

    .line 233
    :cond_1d8
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v11, v20, v22

    .line 234
    .local v11, "latDiffRad":D
    float-to-double v0, v5

    move-wide/from16 v20, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/GeomagneticField;->mX:F

    .line 236
    move-object/from16 v0, p0

    iput v6, v0, Landroid/hardware/GeomagneticField;->mY:F

    .line 237
    neg-float v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/GeomagneticField;->mZ:F

    .line 239
    return-void
.end method

.method private computeGeocentricCoordinates(FFF)V
    .registers 19
    .param p1, "gdLatitudeDeg"    # F
    .param p2, "gdLongitudeDeg"    # F
    .param p3, "altitudeMeters"    # F

    .prologue
    .line 307
    const/high16 v11, 0x447a0000

    div-float v2, p3, v11

    .line 308
    .local v2, "altitudeKm":F
    const v1, 0x4c1b2f2f

    .line 309
    .local v1, "a2":F
    const v3, 0x4c1a253b

    .line 310
    .local v3, "b2":F
    move/from16 v0, p1

    float-to-double v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 311
    .local v5, "gdLatRad":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v4, v11

    .line 312
    .local v4, "clat":F
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v9, v11

    .line 313
    .local v9, "slat":F
    div-float v10, v9, v4

    .line 314
    .local v10, "tlat":F
    mul-float v11, v1, v4

    mul-float/2addr v11, v4

    mul-float v12, v3, v9

    mul-float/2addr v12, v9

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v7, v11

    .line 317
    .local v7, "latRad":F
    mul-float v11, v7, v2

    add-float/2addr v11, v3

    mul-float/2addr v11, v10

    mul-float v12, v7, v2

    add-float/2addr v12, v1

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    double-to-float v11, v11

    iput v11, p0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    .line 320
    move/from16 v0, p2

    float-to-double v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    double-to-float v11, v11

    iput v11, p0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    .line 322
    mul-float v11, v2, v2

    const/high16 v12, 0x40000000

    mul-float/2addr v12, v2

    mul-float v13, v1, v4

    mul-float/2addr v13, v4

    mul-float v14, v3, v9

    mul-float/2addr v14, v9

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    mul-float v12, v1, v1

    mul-float/2addr v12, v4

    mul-float/2addr v12, v4

    mul-float v13, v3, v3

    mul-float/2addr v13, v9

    mul-float/2addr v13, v9

    add-float/2addr v12, v13

    mul-float v13, v1, v4

    mul-float/2addr v13, v4

    mul-float v14, v3, v9

    mul-float/2addr v14, v9

    add-float/2addr v13, v14

    div-float/2addr v12, v13

    add-float v8, v11, v12

    .line 327
    .local v8, "radSq":F
    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    iput v11, p0, Landroid/hardware/GeomagneticField;->mGcRadiusKm:F

    .line 328
    return-void
.end method

.method private static computeSchmidtQuasiNormFactors(I)[[F
    .registers 11
    .param p0, "maxN"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 394
    add-int/lit8 v3, p0, 0x1

    new-array v2, v3, [[F

    .line 395
    .local v2, "schmidtQuasiNorm":[[F
    new-array v3, v4, [F

    const/high16 v5, 0x3f800000

    aput v5, v3, v9

    aput-object v3, v2, v9

    .line 396
    const/4 v1, 0x1

    .local v1, "n":I
    :goto_f
    if-gt v1, p0, :cond_52

    .line 397
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [F

    aput-object v3, v2, v1

    .line 398
    aget-object v3, v2, v1

    add-int/lit8 v5, v1, -0x1

    aget-object v5, v2, v5

    aget v5, v5, v9

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v3, v9

    .line 400
    const/4 v0, 0x1

    .local v0, "m":I
    :goto_2a
    if-gt v0, v1, :cond_4f

    .line 401
    aget-object v5, v2, v1

    aget-object v3, v2, v1

    add-int/lit8 v6, v0, -0x1

    aget v6, v3, v6

    sub-int v3, v1, v0

    add-int/lit8 v7, v3, 0x1

    if-ne v0, v4, :cond_4d

    const/4 v3, 0x2

    :goto_3b
    mul-int/2addr v3, v7

    int-to-float v3, v3

    add-int v7, v1, v0

    int-to-float v7, v7

    div-float/2addr v3, v7

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    mul-float/2addr v3, v6

    aput v3, v5, v0

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_4d
    move v3, v4

    .line 401
    goto :goto_3b

    .line 396
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 406
    .end local v0    # "m":I
    :cond_52
    return-object v2
.end method


# virtual methods
.method public getDeclination()F
    .registers 5

    .prologue
    .line 268
    iget v0, p0, Landroid/hardware/GeomagneticField;->mY:F

    float-to-double v0, v0

    iget v2, p0, Landroid/hardware/GeomagneticField;->mX:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getFieldStrength()F
    .registers 4

    .prologue
    .line 291
    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    iget v1, p0, Landroid/hardware/GeomagneticField;->mX:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/hardware/GeomagneticField;->mY:F

    iget v2, p0, Landroid/hardware/GeomagneticField;->mY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/hardware/GeomagneticField;->mZ:F

    iget v2, p0, Landroid/hardware/GeomagneticField;->mZ:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getHorizontalStrength()F
    .registers 4

    .prologue
    .line 284
    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    iget v1, p0, Landroid/hardware/GeomagneticField;->mX:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/hardware/GeomagneticField;->mY:F

    iget v2, p0, Landroid/hardware/GeomagneticField;->mY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInclination()F
    .registers 5

    .prologue
    .line 276
    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    float-to-double v0, v0

    invoke-virtual {p0}, Landroid/hardware/GeomagneticField;->getHorizontalStrength()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getX()F
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    return v0
.end method

.method public getY()F
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Landroid/hardware/GeomagneticField;->mY:F

    return v0
.end method

.method public getZ()F
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    return v0
.end method
