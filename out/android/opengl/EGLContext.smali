.class public Landroid/opengl/EGLContext;
.super Landroid/opengl/EGLObjectHandle;
.source "EGLContext.java"


# direct methods
.method private constructor <init>(I)V
    .registers 2
    .param p1, "handle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/opengl/EGLObjectHandle;-><init>(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-ne p0, p1, :cond_5

    .line 35
    :cond_4
    :goto_4
    return v1

    .line 32
    :cond_5
    instance-of v3, p1, Landroid/opengl/EGLContext;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 34
    check-cast v0, Landroid/opengl/EGLContext;

    .line 35
    .local v0, "that":Landroid/opengl/EGLContext;
    invoke-virtual {p0}, Landroid/opengl/EGLContext;->getHandle()I

    move-result v3

    invoke-virtual {v0}, Landroid/opengl/EGLContext;->getHandle()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4
.end method
