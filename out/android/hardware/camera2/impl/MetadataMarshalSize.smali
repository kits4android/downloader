.class public Landroid/hardware/camera2/impl/MetadataMarshalSize;
.super Ljava/lang/Object;
.source "MetadataMarshalSize.java"

# interfaces
.implements Landroid/hardware/camera2/impl/MetadataMarshalClass;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/impl/MetadataMarshalClass",
        "<",
        "Landroid/hardware/camera2/Size;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarshalingClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/hardware/camera2/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-class v0, Landroid/hardware/camera2/Size;

    return-object v0
.end method

.method public getNativeSize(I)I
    .registers 3
    .param p1, "nativeType"    # I

    .prologue
    .line 58
    const/16 v0, 0x8

    return v0
.end method

.method public isNativeTypeSupported(I)Z
    .registers 3
    .param p1, "nativeType"    # I

    .prologue
    const/4 v0, 0x1

    .line 53
    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public marshal(Landroid/hardware/camera2/Size;Ljava/nio/ByteBuffer;IZ)I
    .registers 7
    .param p1, "value"    # Landroid/hardware/camera2/Size;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "nativeType"    # I
    .param p4, "sizeOnly"    # Z

    .prologue
    const/16 v1, 0x8

    .line 28
    if-eqz p4, :cond_5

    .line 35
    :goto_4
    return v1

    .line 32
    :cond_5
    invoke-virtual {p1}, Landroid/hardware/camera2/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {p1}, Landroid/hardware/camera2/Size;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_4
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;IZ)I
    .registers 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/nio/ByteBuffer;
    .param p3, "x2"    # I
    .param p4, "x3"    # Z

    .prologue
    .line 22
    check-cast p1, Landroid/hardware/camera2/Size;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/MetadataMarshalSize;->marshal(Landroid/hardware/camera2/Size;Ljava/nio/ByteBuffer;IZ)I

    move-result v0

    return v0
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;I)Landroid/hardware/camera2/Size;
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "nativeType"    # I

    .prologue
    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 41
    .local v1, "width":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 43
    .local v0, "height":I
    new-instance v2, Landroid/hardware/camera2/Size;

    invoke-direct {v2, v1, v0}, Landroid/hardware/camera2/Size;-><init>(II)V

    return-object v2
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/impl/MetadataMarshalSize;->unmarshal(Ljava/nio/ByteBuffer;I)Landroid/hardware/camera2/Size;

    move-result-object v0

    return-object v0
.end method
