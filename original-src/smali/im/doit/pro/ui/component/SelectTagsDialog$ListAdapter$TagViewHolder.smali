.class Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$TagViewHolder;
.super Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$ViewHolder;
.source "SelectTagsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagViewHolder"
.end annotation


# instance fields
.field public nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$TagViewHolder;->this$1:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;

    .line 218
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;Landroid/content/Context;)V

    .line 219
    const v0, 0x7f030058

    invoke-static {p2, v0, p0}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$TagViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 220
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$TagViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$TagViewHolder;->nameTV:Landroid/widget/TextView;

    .line 221
    return-void
.end method


# virtual methods
.method public setViewContent(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 225
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$TagViewHolder;->this$1:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;

    invoke-virtual {v4, p1}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->getItem(I)Lim/doit/pro/model/Tag;

    move-result-object v1

    .line 226
    .local v1, "tag":Lim/doit/pro/model/Tag;
    const/4 v0, 0x0

    .line 227
    .local v0, "isSelected":Z
    const/4 v2, -0x1

    .line 228
    .local v2, "tagIcon":I
    const/4 v3, 0x0

    .line 229
    .local v3, "tagName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 230
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$TagViewHolder;->this$1:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;

    invoke-static {v4}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectTagsDialog;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    .line 231
    const v2, 0x7f0200e7

    .line 232
    const v4, 0x7f0c0038

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 238
    :goto_0
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$TagViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$TagViewHolder;->nameTV:Landroid/widget/TextView;

    .line 240
    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 239
    invoke-virtual {v4, v5, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 241
    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$TagViewHolder;->setSelected(Z)V

    .line 242
    return-void

    .line 234
    :cond_0
    invoke-virtual {v1}, Lim/doit/pro/model/Tag;->getName()Ljava/lang/String;

    move-result-object v3

    .line 235
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$TagViewHolder;->this$1:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;

    invoke-static {v4}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectTagsDialog;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 236
    const v2, 0x7f0200e5

    goto :goto_0
.end method
