.class final Landroid/bluetooth/BluetoothMasInstance$1;
.super Ljava/lang/Object;
.source "BluetoothMasInstance.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMasInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/bluetooth/BluetoothMasInstance;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothMasInstance;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 75
    new-instance v0, Landroid/bluetooth/BluetoothMasInstance;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothMasInstance;-><init>(ILjava/lang/String;II)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMasInstance$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothMasInstance;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothMasInstance;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 79
    new-array v0, p1, [Landroid/bluetooth/BluetoothMasInstance;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMasInstance$1;->newArray(I)[Landroid/bluetooth/BluetoothMasInstance;

    move-result-object v0

    return-object v0
.end method
