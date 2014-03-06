.class final Landroid/content/pm/ThemeInfo$1;
.super Ljava/lang/Object;
.source "ThemeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ThemeInfo;
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
        "Landroid/content/pm/ThemeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ThemeInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 194
    new-instance v0, Landroid/content/pm/ThemeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/ThemeInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/ThemeInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Landroid/content/pm/ThemeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ThemeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/ThemeInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 198
    new-array v0, p1, [Landroid/content/pm/ThemeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Landroid/content/pm/ThemeInfo$1;->newArray(I)[Landroid/content/pm/ThemeInfo;

    move-result-object v0

    return-object v0
.end method
