.class Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DHomeMenuList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/DHomeMenuList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;,
        Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$TextViewHolder;,
        Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final TYPE_BOX:I

.field private final TYPE_TEXT:I

.field final synthetic this$0:Lim/doit/pro/ui/component/DHomeMenuList;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/DHomeMenuList;)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->this$0:Lim/doit/pro/ui/component/DHomeMenuList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->TYPE_BOX:I

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->TYPE_TEXT:I

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/DHomeMenuList;Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;-><init>(Lim/doit/pro/ui/component/DHomeMenuList;)V

    return-void
.end method

.method private setBackground(ILim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "holder"    # Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "preBox":Lim/doit/pro/model/Box;
    if-lez p1, :cond_0

    .line 183
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->getItem(I)Lim/doit/pro/model/Box;

    move-result-object v0

    .line 185
    :cond_0
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 186
    if-eqz v0, :cond_2

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->getItemViewType(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    :cond_1
    const v1, 0x7f020049

    invoke-virtual {p2, v1}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;->setBackgroundResource(I)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_2
    const v1, 0x7f02004a

    invoke-virtual {p2, v1}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->this$0:Lim/doit/pro/ui/component/DHomeMenuList;

    invoke-static {v0}, Lim/doit/pro/ui/component/DHomeMenuList;->access$0(Lim/doit/pro/ui/component/DHomeMenuList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->this$0:Lim/doit/pro/ui/component/DHomeMenuList;

    invoke-static {v0}, Lim/doit/pro/ui/component/DHomeMenuList;->access$0(Lim/doit/pro/ui/component/DHomeMenuList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/model/Box;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->this$0:Lim/doit/pro/ui/component/DHomeMenuList;

    invoke-static {v0}, Lim/doit/pro/ui/component/DHomeMenuList;->access$0(Lim/doit/pro/ui/component/DHomeMenuList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->getItem(I)Lim/doit/pro/model/Box;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->getItem(I)Lim/doit/pro/model/Box;

    move-result-object v0

    .line 132
    .local v0, "box":Lim/doit/pro/model/Box;
    invoke-virtual {v0}, Lim/doit/pro/model/Box;->getType()Lim/doit/pro/model/enums/BoxType;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/enums/BoxType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "group"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const/4 v1, 0x0

    .line 135
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    .line 156
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->getItem(I)Lim/doit/pro/model/Box;

    move-result-object v0

    .line 157
    .local v0, "box":Lim/doit/pro/model/Box;
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->getItemViewType(I)I

    move-result v2

    .line 158
    .local v2, "viewType":I
    if-nez p2, :cond_2

    .line 159
    if-nez v2, :cond_1

    .line 160
    new-instance v1, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;

    iget-object v3, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->this$0:Lim/doit/pro/ui/component/DHomeMenuList;

    invoke-static {v3}, Lim/doit/pro/ui/component/DHomeMenuList;->access$1(Lim/doit/pro/ui/component/DHomeMenuList;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;-><init>(Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;Landroid/content/Context;)V

    .line 167
    .local v1, "holder":Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;
    :goto_0
    iget-object v3, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->this$0:Lim/doit/pro/ui/component/DHomeMenuList;

    invoke-static {v3, v0}, Lim/doit/pro/ui/component/DHomeMenuList;->access$2(Lim/doit/pro/ui/component/DHomeMenuList;Lim/doit/pro/model/Box;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-virtual {v1, v4}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;->setSelected(Z)V

    .line 169
    iget-object v3, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->this$0:Lim/doit/pro/ui/component/DHomeMenuList;

    invoke-static {v3}, Lim/doit/pro/ui/component/DHomeMenuList;->access$3(Lim/doit/pro/ui/component/DHomeMenuList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 170
    iget-object v3, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->this$0:Lim/doit/pro/ui/component/DHomeMenuList;

    invoke-static {v3}, Lim/doit/pro/ui/component/DHomeMenuList;->access$4(Lim/doit/pro/ui/component/DHomeMenuList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    iget-object v3, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->this$0:Lim/doit/pro/ui/component/DHomeMenuList;

    invoke-static {v3, v0}, Lim/doit/pro/ui/component/DHomeMenuList;->access$5(Lim/doit/pro/ui/component/DHomeMenuList;Lim/doit/pro/model/Box;)V

    .line 172
    iget-object v3, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->this$0:Lim/doit/pro/ui/component/DHomeMenuList;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lim/doit/pro/ui/component/DHomeMenuList;->access$6(Lim/doit/pro/ui/component/DHomeMenuList;Z)V

    .line 175
    :cond_0
    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;->setViewContent(Lim/doit/pro/model/Box;)V

    .line 176
    invoke-direct {p0, p1, v1}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->setBackground(ILim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;)V

    .line 177
    return-object v1

    .line 162
    .end local v1    # "holder":Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;
    :cond_1
    new-instance v1, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$TextViewHolder;

    iget-object v3, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->this$0:Lim/doit/pro/ui/component/DHomeMenuList;

    invoke-static {v3}, Lim/doit/pro/ui/component/DHomeMenuList;->access$1(Lim/doit/pro/ui/component/DHomeMenuList;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$TextViewHolder;-><init>(Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;Landroid/content/Context;)V

    .line 164
    .restart local v1    # "holder":Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;
    goto :goto_0

    .end local v1    # "holder":Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;
    :cond_2
    move-object v1, p2

    .line 165
    check-cast v1, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;

    .restart local v1    # "holder":Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->getItemViewType(I)I

    move-result v0

    .line 263
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 264
    const/4 v1, 0x0

    .line 266
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method
