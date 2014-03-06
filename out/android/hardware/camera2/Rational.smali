.class public final Landroid/hardware/camera2/Rational;
.super Ljava/lang/Object;
.source "Rational.java"


# instance fields
.field private final mDenominator:I

.field private final mNumerator:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-gez p2, :cond_7

    .line 41
    neg-int p1, p1

    .line 42
    neg-int p2, p2

    .line 45
    :cond_7
    iput p1, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    .line 46
    iput p2, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    .line 47
    return-void
.end method

.method private isInf()Z
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    if-nez v0, :cond_a

    iget v0, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isNaN()Z
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    if-nez v0, :cond_a

    iget v0, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isNegInf()Z
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    if-nez v0, :cond_a

    iget v0, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 109
    if-nez p1, :cond_6

    move v7, v8

    .line 136
    :cond_5
    :goto_5
    return v7

    .line 111
    :cond_6
    instance-of v9, p1, Landroid/hardware/camera2/Rational;

    if-eqz v9, :cond_65

    move-object v0, p1

    .line 112
    check-cast v0, Landroid/hardware/camera2/Rational;

    .line 113
    .local v0, "other":Landroid/hardware/camera2/Rational;
    iget v9, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    if-eqz v9, :cond_15

    iget v9, v0, Landroid/hardware/camera2/Rational;->mDenominator:I

    if-nez v9, :cond_3b

    .line 114
    :cond_15
    invoke-direct {p0}, Landroid/hardware/camera2/Rational;->isNaN()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-direct {v0}, Landroid/hardware/camera2/Rational;->isNaN()Z

    move-result v9

    if-nez v9, :cond_5

    .line 116
    :cond_21
    invoke-direct {p0}, Landroid/hardware/camera2/Rational;->isInf()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-direct {v0}, Landroid/hardware/camera2/Rational;->isInf()Z

    move-result v9

    if-nez v9, :cond_5

    :cond_2d
    invoke-direct {p0}, Landroid/hardware/camera2/Rational;->isNegInf()Z

    move-result v9

    if-eqz v9, :cond_39

    invoke-direct {v0}, Landroid/hardware/camera2/Rational;->isNegInf()Z

    move-result v9

    if-nez v9, :cond_5

    :cond_39
    move v7, v8

    .line 119
    goto :goto_5

    .line 121
    :cond_3b
    iget v9, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    iget v10, v0, Landroid/hardware/camera2/Rational;->mNumerator:I

    if-ne v9, v10, :cond_47

    iget v9, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    iget v10, v0, Landroid/hardware/camera2/Rational;->mDenominator:I

    if-eq v9, v10, :cond_5

    .line 124
    :cond_47
    invoke-virtual {p0}, Landroid/hardware/camera2/Rational;->gcd()I

    move-result v5

    .line 125
    .local v5, "thisGcd":I
    invoke-virtual {v0}, Landroid/hardware/camera2/Rational;->gcd()I

    move-result v2

    .line 127
    .local v2, "otherGcd":I
    iget v9, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    div-int v6, v9, v5

    .line 128
    .local v6, "thisNumerator":I
    iget v9, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    div-int v4, v9, v5

    .line 130
    .local v4, "thisDenominator":I
    iget v9, v0, Landroid/hardware/camera2/Rational;->mNumerator:I

    div-int v3, v9, v2

    .line 131
    .local v3, "otherNumerator":I
    iget v9, v0, Landroid/hardware/camera2/Rational;->mDenominator:I

    div-int v1, v9, v2

    .line 133
    .local v1, "otherDenominator":I
    if-ne v6, v3, :cond_63

    if-eq v4, v1, :cond_5

    :cond_63
    move v7, v8

    goto :goto_5

    .end local v0    # "other":Landroid/hardware/camera2/Rational;
    .end local v1    # "otherDenominator":I
    .end local v2    # "otherGcd":I
    .end local v3    # "otherNumerator":I
    .end local v4    # "thisDenominator":I
    .end local v5    # "thisGcd":I
    .end local v6    # "thisNumerator":I
    :cond_65
    move v7, v8

    .line 136
    goto :goto_5
.end method

.method public gcd()I
    .registers 5

    .prologue
    .line 189
    iget v0, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    .line 190
    .local v0, "a":I
    iget v1, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    .line 192
    .local v1, "b":I
    :goto_4
    if-eqz v1, :cond_b

    .line 193
    move v2, v1

    .line 195
    .local v2, "oldB":I
    rem-int v1, v0, v1

    .line 196
    move v0, v2

    .line 197
    goto :goto_4

    .line 199
    .end local v2    # "oldB":I
    :cond_b
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    return v3
.end method

.method public getDenominator()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    return v0
.end method

.method public getNumerator()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    if-nez v0, :cond_6

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    goto :goto_5
.end method

.method public hashCode()I
    .registers 9

    .prologue
    const-wide v6, 0xffffffffL

    .line 164
    const-wide v0, 0xffffffffL

    .line 166
    .local v0, "INT_MASK":J
    iget v4, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    int-to-long v4, v4

    and-long v2, v6, v4

    .line 167
    .local v2, "asLong":J
    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 169
    iget v4, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    int-to-long v4, v4

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 171
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->hashCode()I

    move-result v4

    return v4
.end method

.method public toFloat()F
    .registers 3

    .prologue
    .line 159
    iget v0, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    int-to-float v0, v0

    iget v1, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/hardware/camera2/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 142
    const-string v0, "NaN"

    .line 148
    :goto_8
    return-object v0

    .line 143
    :cond_9
    invoke-direct {p0}, Landroid/hardware/camera2/Rational;->isInf()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 144
    const-string v0, "Infinity"

    goto :goto_8

    .line 145
    :cond_12
    invoke-direct {p0}, Landroid/hardware/camera2/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 146
    const-string v0, "-Infinity"

    goto :goto_8

    .line 148
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
