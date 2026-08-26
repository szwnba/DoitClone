.class Lim/doit/pro/activity/ContactListActivity$ListAdatper;
.super Landroid/widget/BaseAdapter;
.source "ContactListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ContactListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdatper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/ContactListActivity$ListAdatper$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ContactListActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ContactListActivity;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lim/doit/pro/activity/ContactListActivity$ListAdatper;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ContactListActivity;Lim/doit/pro/activity/ContactListActivity$ListAdatper;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ContactListActivity$ListAdatper;-><init>(Lim/doit/pro/activity/ContactListActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lim/doit/pro/activity/ContactListActivity$ListAdatper;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ContactListActivity;->access$8(Lim/doit/pro/activity/ContactListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/ContactListActivity$ListAdatper;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ContactListActivity;->access$8(Lim/doit/pro/activity/ContactListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/model/Contact;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lim/doit/pro/activity/ContactListActivity$ListAdatper;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ContactListActivity;->access$8(Lim/doit/pro/activity/ContactListActivity;)Ljava/util/ArrayList;

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
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ContactListActivity$ListAdatper;->getItem(I)Lim/doit/pro/model/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 179
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 185
    if-nez p2, :cond_0

    .line 186
    new-instance v0, Lim/doit/pro/activity/ContactListActivity$ListAdatper$ViewHolder;

    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity$ListAdatper;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/ContactListActivity$ListAdatper$ViewHolder;-><init>(Lim/doit/pro/activity/ContactListActivity$ListAdatper;Landroid/content/Context;)V

    .line 190
    .local v0, "viewHolder":Lim/doit/pro/activity/ContactListActivity$ListAdatper$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ContactListActivity$ListAdatper;->getItem(I)Lim/doit/pro/model/Contact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/ContactListActivity$ListAdatper$ViewHolder;->setViewContent(Lim/doit/pro/model/Contact;)V

    .line 191
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactListActivity$ListAdatper;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_1

    .line 192
    iget-object v1, v0, Lim/doit/pro/activity/ContactListActivity$ListAdatper$ViewHolder;->bottomDivider:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :goto_1
    return-object v0

    .end local v0    # "viewHolder":Lim/doit/pro/activity/ContactListActivity$ListAdatper$ViewHolder;
    :cond_0
    move-object v0, p2

    .line 188
    check-cast v0, Lim/doit/pro/activity/ContactListActivity$ListAdatper$ViewHolder;

    .restart local v0    # "viewHolder":Lim/doit/pro/activity/ContactListActivity$ListAdatper$ViewHolder;
    goto :goto_0

    .line 194
    :cond_1
    iget-object v1, v0, Lim/doit/pro/activity/ContactListActivity$ListAdatper$ViewHolder;->bottomDivider:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
