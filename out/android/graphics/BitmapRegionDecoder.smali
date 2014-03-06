.class public final Landroid/graphics/BitmapRegionDecoder;
.super Ljava/lang/Object;
.source "BitmapRegionDecoder.java"


# instance fields
.field private mNativeBitmapRegionDecoder:I

.field private final mNativeLock:Ljava/lang/Object;

.field private mRecycled:Z


# direct methods
.method private constructor <init>(I)V
    .registers 3
    .param p1, "decoder"    # I

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    .line 169
    iput p1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    .line 171
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-eqz v0, :cond_a

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_a
    return-void
.end method

.method private static native nativeClean(I)V
.end method

.method private static native nativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(I)I
.end method

.method private static native nativeGetWidth(I)I
.end method

.method private static native nativeNewInstance(IZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .registers 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    instance-of v1, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_f

    .line 116
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(IZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 124
    :goto_e
    return-object v1

    .line 123
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_f
    const/16 v1, 0x4000

    new-array v0, v1, [B

    .line 124
    .local v0, "tempStorage":[B
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    goto :goto_e
.end method

.method public static newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .registers 7
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v1, 0x0

    .line 149
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_11

    .line 150
    .end local v1    # "stream":Ljava/io/InputStream;
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_7
    invoke-static {v2, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_1c

    move-result-object v0

    .line 152
    if-eqz v2, :cond_10

    .line 154
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_18

    .line 160
    :cond_10
    :goto_10
    return-object v0

    .line 152
    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catchall_11
    move-exception v3

    :goto_12
    if-eqz v1, :cond_17

    .line 154
    :try_start_14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_1a

    .line 157
    :cond_17
    :goto_17
    throw v3

    .line 155
    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catch_18
    move-exception v3

    goto :goto_10

    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catch_1a
    move-exception v4

    goto :goto_17

    .line 152
    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catchall_1c
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    goto :goto_12
.end method

.method public static newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    or-int v0, p1, p2

    if-ltz v0, :cond_9

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_f

    .line 63
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 65
    :cond_f
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 183
    iget-object v6, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 184
    :try_start_3
    const-string v0, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 185
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_20

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_20

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_20

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_2c

    .line 187
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rectangle is outside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :catchall_29
    move-exception v0

    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v0

    .line 188
    :cond_2c
    :try_start_2c
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/BitmapRegionDecoder;->nativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v6
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_29

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 251
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 253
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 255
    return-void

    .line 253
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .registers 3

    .prologue
    .line 203
    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_3
    const-string v0, "getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 205
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeGetHeight(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 206
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getWidth()I
    .registers 3

    .prologue
    .line 195
    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_3
    const-string v0, "getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 197
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeGetWidth(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 198
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public final isRecycled()Z
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .registers 3

    .prologue
    .line 220
    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_3
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_f

    .line 222
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeClean(I)V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    .line 225
    :cond_f
    monitor-exit v1

    .line 226
    return-void

    .line 225
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method