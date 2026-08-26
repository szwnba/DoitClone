.class Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;
.super Landroid/widget/BaseAdapter;
.source "SelectContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SelectContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdatper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SelectContactsActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/SelectContactsActivity;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/SelectContactsActivity;Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;-><init>(Lim/doit/pro/activity/SelectContactsActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SelectContactsActivity;->access$5(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SelectContactsActivity;->access$5(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/model/Contact;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SelectContactsActivity;->access$5(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Contact;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->getItem(I)Lim/doit/pro/model/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 221
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 227
    if-nez p2, :cond_1

    .line 228
    new-instance v2, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;

    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-direct {v2, p0, v3}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;-><init>(Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;Landroid/content/Context;)V

    .line 232
    .local v2, "viewHolder":Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->getItem(I)Lim/doit/pro/model/Contact;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;->setViewContent(Lim/doit/pro/model/Contact;)V

    .line 233
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->getItem(I)Lim/doit/pro/model/Contact;

    move-result-object v0

    .line 234
    .local v0, "contact":Lim/doit/pro/model/Contact;
    const/4 v1, 0x0

    .line 235
    .local v1, "isSelected":Z
    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v3}, Lim/doit/pro/activity/SelectContactsActivity;->access$3(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Lim/doit/pro/model/Contact;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    const/4 v1, 0x1

    .line 238
    :cond_0
    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v3}, Lim/doit/pro/activity/SelectContactsActivity;->access$6(Lim/doit/pro/activity/SelectContactsActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 239
    invoke-virtual {p0}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    .line 240
    iget-object v3, v2, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;->bottomDivider:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :goto_1
    return-object v2

    .end local v0    # "contact":Lim/doit/pro/model/Contact;
    .end local v1    # "isSelected":Z
    .end local v2    # "viewHolder":Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;
    :cond_1
    move-object v2, p2

    .line 230
    check-cast v2, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;

    .restart local v2    # "viewHolder":Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;
    goto :goto_0

    .line 242
    .restart local v0    # "contact":Lim/doit/pro/model/Contact;
    .restart local v1    # "isSelected":Z
    :cond_2
    iget-object v3, v2, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;->bottomDivider:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->getItem(I)Lim/doit/pro/model/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/model/Contact;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "userId":Ljava/lang/String;
    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v3}, Lim/doit/pro/activity/SelectContactsActivity;->access$2(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->getItem(I)Lim/doit/pro/model/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Contact;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 253
    :cond_1
    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v3}, Lim/doit/pro/activity/SelectContactsActivity;->access$3(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v3}, Lim/doit/pro/activity/SelectContactsActivity;->access$3(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v4}, Lim/doit/pro/activity/SelectContactsActivity;->access$2(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v3, v2, :cond_0

    :cond_2
    move v1, v2

    .line 256
    goto :goto_0
.end method
