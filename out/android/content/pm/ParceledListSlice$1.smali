.class Landroid/content/pm/ParceledListSlice$1;
.super Landroid/os/Binder;
.source "ParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/ParceledListSlice;

.field final synthetic val$N:I

.field final synthetic val$callFlags:I


# direct methods
.method constructor <init>(Landroid/content/pm/ParceledListSlice;II)V
    .registers 4

    .prologue
    .line 129
    .local p0, "this":Landroid/content/pm/ParceledListSlice$1;, "Landroid/content/pm/ParceledListSlice.1;"
    iput-object p1, p0, Landroid/content/pm/ParceledListSlice$1;->this$0:Landroid/content/pm/ParceledListSlice;

    iput p2, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    iput p3, p0, Landroid/content/pm/ParceledListSlice$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    .local p0, "this":Landroid/content/pm/ParceledListSlice$1;, "Landroid/content/pm/ParceledListSlice.1;"
    const/4 v2, 0x1

    .line 133
    if-eq p1, v2, :cond_8

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 148
    :goto_7
    return v1

    .line 136
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .local v0, "i":I
    # getter for: Landroid/content/pm/ParceledListSlice;->DEBUG:Z
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$000()Z

    move-result v1

    if-eqz v1, :cond_38

    # getter for: Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing more @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_38
    :goto_38
    iget v1, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    if-ge v0, v1, :cond_8f

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/high16 v3, 0x40000

    if-ge v1, v3, :cond_8f

    .line 139
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v1, p0, Landroid/content/pm/ParceledListSlice$1;->this$0:Landroid/content/pm/ParceledListSlice;

    # getter for: Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;
    invoke-static {v1}, Landroid/content/pm/ParceledListSlice;->access$200(Landroid/content/pm/ParceledListSlice;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    iget v3, p0, Landroid/content/pm/ParceledListSlice$1;->val$callFlags:I

    invoke-interface {v1, p3, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    # getter for: Landroid/content/pm/ParceledListSlice;->DEBUG:Z
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$000()Z

    move-result v1

    if-eqz v1, :cond_8c

    # getter for: Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrote extra #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/pm/ParceledListSlice$1;->this$0:Landroid/content/pm/ParceledListSlice;

    # getter for: Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;
    invoke-static {v4}, Landroid/content/pm/ParceledListSlice;->access$200(Landroid/content/pm/ParceledListSlice;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 144
    :cond_8f
    iget v1, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    if-ge v0, v1, :cond_c3

    .line 145
    # getter for: Landroid/content/pm/ParceledListSlice;->DEBUG:Z
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$000()Z

    move-result v1

    if-eqz v1, :cond_bf

    # getter for: Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Breaking @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_bf
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_c3
    move v1, v2

    .line 148
    goto/16 :goto_7
.end method
