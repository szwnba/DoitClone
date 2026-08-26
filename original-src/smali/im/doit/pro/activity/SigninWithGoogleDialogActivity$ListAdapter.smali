.class Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SigninWithGoogleDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SigninWithGoogleDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;-><init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->access$0(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->access$0(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->access$0(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 168
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 174
    if-nez p2, :cond_0

    .line 175
    new-instance v1, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter$ViewHolder;

    iget-object v3, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-direct {v1, p0, v3}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;Landroid/content/Context;)V

    .line 179
    .local v1, "holder":Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "email":Ljava/lang/String;
    iget-object v3, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-static {v3}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->access$1(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 181
    .local v2, "isSelected":Z
    iget-object v3, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-static {v3}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->access$2(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 182
    iget-object v3, v1, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-object v1

    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "holder":Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter$ViewHolder;
    .end local v2    # "isSelected":Z
    :cond_0
    move-object v1, p2

    .line 177
    check-cast v1, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter$ViewHolder;

    .restart local v1    # "holder":Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter$ViewHolder;
    goto :goto_0
.end method
