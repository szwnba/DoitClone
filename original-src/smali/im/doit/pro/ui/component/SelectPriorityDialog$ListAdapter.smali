.class Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectPriorityDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectPriorityDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SelectPriorityDialog;I)V
    .locals 0
    .param p2, "defaultPriority"    # I

    .prologue
    .line 96
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 97
    invoke-static {p1, p2}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$0(Lim/doit/pro/ui/component/SelectPriorityDialog;I)V

    .line 98
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$1(Lim/doit/pro/ui/component/SelectPriorityDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$1(Lim/doit/pro/ui/component/SelectPriorityDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$1(Lim/doit/pro/ui/component/SelectPriorityDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 115
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

    .line 121
    if-nez p2, :cond_0

    .line 122
    new-instance v0, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter$ViewHolder;

    iget-object v5, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$2(Lim/doit/pro/ui/component/SelectPriorityDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter;Landroid/content/Context;)V

    .line 126
    .local v0, "holder":Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 127
    .local v4, "priority":I
    iget-object v5, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$3(Lim/doit/pro/ui/component/SelectPriorityDialog;)I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    .line 128
    .local v2, "isSelected":Z
    :goto_1
    invoke-static {v4}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatPriorityForSelectDialog(I)I

    move-result v3

    .line 129
    .local v3, "name":I
    invoke-static {v4}, Lim/doit/pro/activity/utils/TaskUIHelper;->getPriorityIconForSelectDialog(I)I

    move-result v1

    .line 130
    .local v1, "icon":I
    iget-object v5, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$4(Lim/doit/pro/ui/component/SelectPriorityDialog;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 131
    iget-object v5, v0, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v5, v0, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 133
    return-object v0

    .end local v0    # "holder":Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter$ViewHolder;
    .end local v1    # "icon":I
    .end local v2    # "isSelected":Z
    .end local v3    # "name":I
    .end local v4    # "priority":I
    :cond_0
    move-object v0, p2

    .line 124
    check-cast v0, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter$ViewHolder;

    .restart local v0    # "holder":Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter$ViewHolder;
    goto :goto_0

    .line 127
    .restart local v4    # "priority":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
