.class Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;
.super Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;
.source "SelectProjectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProjectViewHolder"
.end annotation


# instance fields
.field public nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;->this$1:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;

    .line 185
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;Landroid/content/Context;)V

    .line 186
    const v0, 0x7f030058

    invoke-static {p2, v0, p0}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 187
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;->nameTV:Landroid/widget/TextView;

    .line 188
    return-void
.end method


# virtual methods
.method public setViewContent(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 192
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;->this$1:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;

    invoke-virtual {v3, p1}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->getItem(I)Lim/doit/pro/model/Project;

    move-result-object v2

    .line 193
    .local v2, "project":Lim/doit/pro/model/Project;
    const/4 v1, 0x0

    .line 194
    .local v1, "isSelected":Z
    const v0, 0x7f0200df

    .line 195
    .local v0, "icon":I
    if-nez v2, :cond_1

    .line 196
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;->this$1:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;

    invoke-static {v3}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectProjectDialog;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$0(Lim/doit/pro/ui/component/SelectProjectDialog;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 197
    :goto_0
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;->nameTV:Landroid/widget/TextView;

    const v4, 0x7f0c0038

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 198
    const v0, 0x7f0200e1

    .line 203
    :goto_1
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;->nameTV:Landroid/widget/TextView;

    .line 204
    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 203
    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;->setSelected(Z)V

    .line 206
    return-void

    .line 196
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;->this$1:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;

    invoke-static {v4}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectProjectDialog;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$0(Lim/doit/pro/ui/component/SelectProjectDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 201
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
