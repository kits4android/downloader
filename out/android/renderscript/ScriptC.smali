.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "com.android.renderscript.cache"

.field private static final TAG:Ljava/lang/String; = "ScriptC"

.field static mCachePath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILandroid/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/renderscript/Script;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 7
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceID"    # I

    .prologue
    .line 58
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Landroid/renderscript/Script;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 59
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)I

    move-result v0

    .line 60
    .local v0, "id":I
    if-nez v0, :cond_12

    .line 61
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Loading of ScriptC script failed."

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_12
    invoke-virtual {p0, v0}, Landroid/renderscript/ScriptC;->setID(I)V

    .line 64
    return-void
.end method

.method private static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)I
    .registers 16
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # I

    .prologue
    .line 76
    const-class v10, Landroid/renderscript/ScriptC;

    monitor-enter v10

    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_59

    move-result-object v5

    .line 79
    .local v5, "is":Ljava/io/InputStream;
    const/16 v9, 0x400

    :try_start_9
    new-array v6, v9, [B

    .line 80
    .local v6, "pgm":[B
    const/4 v7, 0x0

    .line 82
    .local v7, "pgmLength":I
    :goto_c
    array-length v9, v6

    sub-int v1, v9, v7

    .line 83
    .local v1, "bytesLeft":I
    if-nez v1, :cond_20

    .line 84
    array-length v9, v6

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [B

    .line 85
    .local v0, "buf2":[B
    const/4 v9, 0x0

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    move-object v6, v0

    .line 87
    array-length v9, v6

    sub-int v1, v9, v7

    .line 89
    .end local v0    # "buf2":[B
    :cond_20
    invoke-virtual {v5, v6, v7, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_4d

    move-result v2

    .line 90
    .local v2, "bytesRead":I
    if-gtz v2, :cond_4b

    .line 96
    :try_start_26
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_52
    .catchall {:try_start_26 .. :try_end_29} :catchall_59

    .line 102
    :try_start_29
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "resName":Ljava/lang/String;
    sget-object v9, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    if-nez v9, :cond_43

    .line 106
    new-instance v4, Ljava/io/File;

    sget-object v9, Landroid/renderscript/RenderScript;->mCacheDir:Ljava/io/File;

    const-string v11, "com.android.renderscript.cache"

    invoke-direct {v4, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    .line 108
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 111
    .end local v4    # "f":Ljava/io/File;
    :cond_43
    sget-object v9, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    invoke-virtual {p0, v8, v9, v6, v7}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)I
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_59

    move-result v9

    monitor-exit v10

    return v9

    .line 93
    .end local v8    # "resName":Ljava/lang/String;
    :cond_4b
    add-int/2addr v7, v2

    .line 94
    goto :goto_c

    .line 96
    .end local v1    # "bytesLeft":I
    .end local v2    # "bytesRead":I
    .end local v6    # "pgm":[B
    .end local v7    # "pgmLength":I
    :catchall_4d
    move-exception v9

    :try_start_4e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_59

    .line 98
    :catch_52
    move-exception v3

    .line 99
    .local v3, "e":Ljava/io/IOException;
    :try_start_53
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v9}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v9
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_59

    .line 76
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    :catchall_59
    move-exception v9

    monitor-exit v10

    throw v9
.end method
