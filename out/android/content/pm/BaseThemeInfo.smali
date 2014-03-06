.class public Landroid/content/pm/BaseThemeInfo;
.super Ljava/lang/Object;
.source "BaseThemeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/BaseThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCKED_NAME:Ljava/lang/String; = "locked/"


# instance fields
.field public author:Ljava/lang/String;

.field public copyright:Ljava/lang/String;

.field public isDrmProtected:Z

.field public name:Ljava/lang/String;

.field public notificationRingtoneFileName:Ljava/lang/String;

.field public notificationRingtoneName:Ljava/lang/String;

.field public previewResourceId:I

.field public ringtoneFileName:Ljava/lang/String;

.field public ringtoneName:Ljava/lang/String;

.field public soundPackName:Ljava/lang/String;

.field public styleResourceId:I

.field public themeId:Ljava/lang/String;

.field public themeStyleName:Ljava/lang/String;

.field public thumbnailResourceId:I

.field public wallpaperResourceId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 198
    new-instance v0, Landroid/content/pm/BaseThemeInfo$1;

    invoke-direct {v0}, Landroid/content/pm/BaseThemeInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/BaseThemeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Landroid/content/pm/BaseThemeInfo;->styleResourceId:I

    .line 129
    iput-boolean v0, p0, Landroid/content/pm/BaseThemeInfo;->isDrmProtected:Z

    .line 219
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Landroid/content/pm/BaseThemeInfo;->styleResourceId:I

    .line 129
    iput-boolean v0, p0, Landroid/content/pm/BaseThemeInfo;->isDrmProtected:Z

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/BaseThemeInfo;->wallpaperResourceId:I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/BaseThemeInfo;->thumbnailResourceId:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/BaseThemeInfo;->themeId:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/BaseThemeInfo;->styleResourceId:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/BaseThemeInfo;->name:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/BaseThemeInfo;->ringtoneFileName:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/BaseThemeInfo;->notificationRingtoneFileName:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/BaseThemeInfo;->ringtoneName:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/BaseThemeInfo;->notificationRingtoneName:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/BaseThemeInfo;->author:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/BaseThemeInfo;->copyright:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_51

    const/4 v0, 0x1

    :cond_51
    iput-boolean v0, p0, Landroid/content/pm/BaseThemeInfo;->isDrmProtected:Z

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/BaseThemeInfo;->soundPackName:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/BaseThemeInfo;->themeStyleName:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/BaseThemeInfo;->previewResourceId:I

    .line 237
    return-void
.end method


# virtual methods
.method protected changeDrmFlagIfNeeded(Ljava/lang/String;)V
    .registers 3
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 240
    if-eqz p1, :cond_d

    const-string v0, "locked/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/BaseThemeInfo;->isDrmProtected:Z

    .line 243
    :cond_d
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public final getResolvedString(Landroid/content/res/Resources;Landroid/util/AttributeSet;I)Ljava/lang/String;
    .registers 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "index"    # I

    .prologue
    .line 211
    const/4 v1, 0x0

    invoke-interface {p2, p3, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    .line 212
    .local v0, "resId":I
    if-eqz v0, :cond_c

    .line 213
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    :goto_b
    return-object v1

    :cond_c
    invoke-interface {p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 180
    iget v0, p0, Landroid/content/pm/BaseThemeInfo;->wallpaperResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Landroid/content/pm/BaseThemeInfo;->thumbnailResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Landroid/content/pm/BaseThemeInfo;->themeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget v0, p0, Landroid/content/pm/BaseThemeInfo;->styleResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Landroid/content/pm/BaseThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Landroid/content/pm/BaseThemeInfo;->ringtoneFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Landroid/content/pm/BaseThemeInfo;->notificationRingtoneFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Landroid/content/pm/BaseThemeInfo;->ringtoneName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Landroid/content/pm/BaseThemeInfo;->notificationRingtoneName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Landroid/content/pm/BaseThemeInfo;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Landroid/content/pm/BaseThemeInfo;->copyright:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-boolean v0, p0, Landroid/content/pm/BaseThemeInfo;->isDrmProtected:Z

    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    :goto_3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Landroid/content/pm/BaseThemeInfo;->soundPackName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Landroid/content/pm/BaseThemeInfo;->themeStyleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget v0, p0, Landroid/content/pm/BaseThemeInfo;->previewResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    return-void

    .line 191
    :cond_4f
    const/4 v0, 0x0

    goto :goto_3c
.end method
