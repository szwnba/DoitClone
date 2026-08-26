.class Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TagFilterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/TagFilterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/TagFilterDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/TagFilterDialog;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/TagFilterDialog;Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/TagFilterDialog;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/TagFilterDialog;->access$2(Lim/doit/pro/ui/component/TagFilterDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/TagFilterDialog;->access$2(Lim/doit/pro/ui/component/TagFilterDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/TagFilterDialog;->access$2(Lim/doit/pro/ui/component/TagFilterDialog;)Ljava/util/ArrayList;

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
    .line 174
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 180
    if-nez p2, :cond_0

    .line 181
    new-instance v0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter$ViewHolder;

    iget-object v4, p0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v4}, Lim/doit/pro/ui/component/TagFilterDialog;->access$7(Lim/doit/pro/ui/component/TagFilterDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;Landroid/content/Context;)V

    .line 185
    .local v0, "holder":Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "tag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 187
    .local v1, "isSelected":Z
    const/4 v3, -0x1

    .line 188
    .local v3, "tagIcon":I
    if-nez p1, :cond_1

    .line 189
    iget-object v4, p0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v4}, Lim/doit/pro/ui/component/TagFilterDialog;->access$8(Lim/doit/pro/ui/component/TagFilterDialog;)Z

    move-result v1

    .line 190
    const v3, 0x7f0200e6

    .line 198
    :goto_1
    iget-object v4, p0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v4}, Lim/doit/pro/ui/component/TagFilterDialog;->access$10(Lim/doit/pro/ui/component/TagFilterDialog;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 199
    iget-object v4, v0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v4, v0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 201
    return-object v0

    .end local v0    # "holder":Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter$ViewHolder;
    .end local v1    # "isSelected":Z
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "tagIcon":I
    :cond_0
    move-object v0, p2

    .line 183
    check-cast v0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter$ViewHolder;

    .restart local v0    # "holder":Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter$ViewHolder;
    goto :goto_0

    .line 191
    .restart local v1    # "isSelected":Z
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "tagIcon":I
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 192
    iget-object v4, p0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v4}, Lim/doit/pro/ui/component/TagFilterDialog;->access$9(Lim/doit/pro/ui/component/TagFilterDialog;)Z

    move-result v1

    .line 193
    const v3, 0x7f0200e8

    .line 194
    goto :goto_1

    .line 195
    :cond_2
    iget-object v4, p0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v4}, Lim/doit/pro/ui/component/TagFilterDialog;->access$3(Lim/doit/pro/ui/component/TagFilterDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 196
    const v3, 0x7f0200e5

    goto :goto_1
.end method
