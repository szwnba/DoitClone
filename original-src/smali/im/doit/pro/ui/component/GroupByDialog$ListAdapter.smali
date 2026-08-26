.class Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupByDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/GroupByDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/GroupByDialog$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/GroupByDialog;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/GroupByDialog;Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "defaultGroupby"    # Lim/doit/pro/model/enums/GroupByType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/enums/GroupByType;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/enums/GroupByType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p3, "groupbys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/enums/GroupByType;>;"
    iput-object p1, p0, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    .line 93
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 95
    invoke-static {p1, p2}, Lim/doit/pro/ui/component/GroupByDialog;->access$0(Lim/doit/pro/ui/component/GroupByDialog;Lim/doit/pro/model/enums/GroupByType;)V

    .line 96
    invoke-static {p1, p3}, Lim/doit/pro/ui/component/GroupByDialog;->access$1(Lim/doit/pro/ui/component/GroupByDialog;Ljava/util/ArrayList;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/GroupByDialog;->access$2(Lim/doit/pro/ui/component/GroupByDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/GroupByDialog;->access$2(Lim/doit/pro/ui/component/GroupByDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/model/enums/GroupByType;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/GroupByDialog;->access$2(Lim/doit/pro/ui/component/GroupByDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/enums/GroupByType;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;->getItem(I)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 114
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 120
    if-nez p2, :cond_0

    .line 121
    new-instance v3, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter$ViewHolder;

    iget-object v5, p0, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/GroupByDialog;->access$3(Lim/doit/pro/ui/component/GroupByDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;Landroid/content/Context;)V

    .line 125
    .local v3, "holder":Lim/doit/pro/ui/component/GroupByDialog$ListAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;->getItem(I)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v2

    .line 126
    .local v2, "groupby":Lim/doit/pro/model/enums/GroupByType;
    const/4 v4, 0x0

    .line 127
    .local v4, "isSelected":Z
    const/4 v1, -0x1

    .line 128
    .local v1, "groupName":I
    const/4 v0, -0x1

    .line 129
    .local v0, "groupIcon":I
    if-nez v2, :cond_2

    .line 131
    iget-object v5, p0, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/GroupByDialog;->access$4(Lim/doit/pro/ui/component/GroupByDialog;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v4, 0x1

    .line 132
    :goto_1
    const v1, 0x7f0c0174

    .line 133
    const v0, 0x7f0200a2

    .line 139
    :goto_2
    iget-object v5, p0, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/GroupByDialog;->access$5(Lim/doit/pro/ui/component/GroupByDialog;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 140
    iget-object v5, v3, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v5, v3, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    .line 142
    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 141
    invoke-virtual {v5, v6, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-object v3

    .end local v0    # "groupIcon":I
    .end local v1    # "groupName":I
    .end local v2    # "groupby":Lim/doit/pro/model/enums/GroupByType;
    .end local v3    # "holder":Lim/doit/pro/ui/component/GroupByDialog$ListAdapter$ViewHolder;
    .end local v4    # "isSelected":Z
    :cond_0
    move-object v3, p2

    .line 123
    check-cast v3, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter$ViewHolder;

    .restart local v3    # "holder":Lim/doit/pro/ui/component/GroupByDialog$ListAdapter$ViewHolder;
    goto :goto_0

    .line 131
    .restart local v0    # "groupIcon":I
    .restart local v1    # "groupName":I
    .restart local v2    # "groupby":Lim/doit/pro/model/enums/GroupByType;
    .restart local v4    # "isSelected":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 135
    :cond_2
    iget-object v5, p0, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/GroupByDialog;->access$4(Lim/doit/pro/ui/component/GroupByDialog;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v5

    invoke-virtual {v2, v5}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 136
    invoke-virtual {v2}, Lim/doit/pro/model/enums/GroupByType;->getName()I

    move-result v1

    .line 137
    invoke-virtual {v2}, Lim/doit/pro/model/enums/GroupByType;->getIcon()I

    move-result v0

    goto :goto_2
.end method
