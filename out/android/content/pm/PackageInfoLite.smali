.class public Landroid/content/pm/PackageInfoLite;
.super Ljava/lang/Object;
.source "PackageInfoLite.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageInfoLite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public installLocation:I

.field public isTheme:Z

.field public packageName:Ljava/lang/String;

.field public recommendedInstallLocation:I

.field public verifiers:[Landroid/content/pm/VerifierInfo;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    new-instance v0, Landroid/content/pm/PackageInfoLite$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInfoLite$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInfoLite;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v1, :cond_30

    :goto_23
    iput-boolean v1, p0, Landroid/content/pm/PackageInfoLite;->isTheme:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .local v0, "verifiersLength":I
    if-nez v0, :cond_32

    .line 100
    new-array v1, v2, [Landroid/content/pm/VerifierInfo;

    iput-object v1, p0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 105
    :goto_2f
    return-void

    .end local v0    # "verifiersLength":I
    :cond_30
    move v1, v2

    .line 96
    goto :goto_23

    .line 102
    .restart local v0    # "verifiersLength":I
    :cond_32
    new-array v1, v0, [Landroid/content/pm/VerifierInfo;

    iput-object v1, p0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 103
    iget-object v1, p0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    sget-object v2, Landroid/content/pm/VerifierInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    goto :goto_2f
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PackageInfoLite$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/PackageInfoLite$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/content/pm/PackageInfoLite;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageInfoLite{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget v0, p0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-boolean v0, p0, Landroid/content/pm/PackageInfoLite;->isTheme:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v0, v0

    if-nez v0, :cond_2c

    .line 73
    :cond_26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    :goto_29
    return-void

    :cond_2a
    move v0, v1

    .line 70
    goto :goto_1a

    .line 75
    :cond_2c
    iget-object v0, p0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_29
.end method