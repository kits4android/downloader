.class public abstract Landroid/view/IMagnificationCallbacks$Stub;
.super Landroid/os/Binder;
.source "IMagnificationCallbacks.java"

# interfaces
.implements Landroid/view/IMagnificationCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IMagnificationCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IMagnificationCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IMagnificationCallbacks"

.field static final TRANSACTION_onMagnifedBoundsChanged:I = 0x1

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x2

.field static final TRANSACTION_onRotationChanged:I = 0x3

.field static final TRANSACTION_onUserContextChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.view.IMagnificationCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/view/IMagnificationCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IMagnificationCallbacks;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.view.IMagnificationCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IMagnificationCallbacks;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/view/IMagnificationCallbacks;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/view/IMagnificationCallbacks$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IMagnificationCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_58

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 45
    :sswitch_9
    const-string v5, "android.view.IMagnificationCallbacks"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v5, "android.view.IMagnificationCallbacks"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    .line 53
    sget-object v5, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    .line 58
    .local v0, "_arg0":Landroid/graphics/Region;
    :goto_22
    invoke-virtual {p0, v0}, Landroid/view/IMagnificationCallbacks$Stub;->onMagnifedBoundsChanged(Landroid/graphics/Region;)V

    goto :goto_8

    .line 56
    .end local v0    # "_arg0":Landroid/graphics/Region;
    :cond_26
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Region;
    goto :goto_22

    .line 63
    .end local v0    # "_arg0":Landroid/graphics/Region;
    :sswitch_28
    const-string v5, "android.view.IMagnificationCallbacks"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 72
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/IMagnificationCallbacks$Stub;->onRectangleOnScreenRequested(IIII)V

    goto :goto_8

    .line 77
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :sswitch_41
    const-string v5, "android.view.IMagnificationCallbacks"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/IMagnificationCallbacks$Stub;->onRotationChanged(I)V

    goto :goto_8

    .line 85
    .end local v0    # "_arg0":I
    :sswitch_4e
    const-string v5, "android.view.IMagnificationCallbacks"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/view/IMagnificationCallbacks$Stub;->onUserContextChanged()V

    goto :goto_8

    .line 41
    nop

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_28
        0x3 -> :sswitch_41
        0x4 -> :sswitch_4e
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
