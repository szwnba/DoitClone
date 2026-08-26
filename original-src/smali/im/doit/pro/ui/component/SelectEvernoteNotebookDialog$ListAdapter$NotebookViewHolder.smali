.class Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$NotebookViewHolder;
.super Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$ViewHolder;
.source "SelectEvernoteNotebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotebookViewHolder"
.end annotation


# instance fields
.field public nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 272
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$NotebookViewHolder;->this$1:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;

    .line 273
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;Landroid/content/Context;)V

    .line 274
    const v1, 0x7f030058

    invoke-static {p2, v1, p0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$NotebookViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 275
    const v1, 0x7f0b0115

    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$NotebookViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$NotebookViewHolder;->nameTV:Landroid/widget/TextView;

    .line 276
    const v0, 0x7f02007e

    .line 277
    .local v0, "icon":I
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$NotebookViewHolder;->nameTV:Landroid/widget/TextView;

    .line 278
    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 277
    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 279
    return-void
.end method


# virtual methods
.method public setViewContent(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 283
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$NotebookViewHolder;->this$1:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;

    invoke-virtual {v2, p1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;->getItem(I)Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;

    move-result-object v1

    .line 284
    .local v1, "notebook":Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$NotebookViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {v1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;->getId()Ljava/lang/String;

    move-result-object v2

    .line 286
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$NotebookViewHolder;->this$1:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;

    invoke-static {v3}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->access$0(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-static {v2, v3}, Lim/doit/pro/utils/StringUtils;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 287
    .local v0, "isSelected":Z
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$NotebookViewHolder;->this$1:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->access$1(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 288
    return-void
.end method
