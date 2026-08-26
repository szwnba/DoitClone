.class Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectEvernoteNotebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$NotebookViewHolder;,
        Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->access$2(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->access$2(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->access$2(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;->getItem(I)Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 252
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 258
    if-nez p2, :cond_0

    .line 259
    new-instance v0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$NotebookViewHolder;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$NotebookViewHolder;-><init>(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;Landroid/content/Context;)V

    .line 263
    .local v0, "holder":Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$ViewHolder;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$ViewHolder;->setTag(Ljava/lang/Object;)V

    .line 264
    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$ViewHolder;->setViewContent(I)V

    .line 265
    return-object v0

    .end local v0    # "holder":Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$ViewHolder;
    :cond_0
    move-object v0, p2

    .line 261
    check-cast v0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$ViewHolder;

    .restart local v0    # "holder":Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter$ViewHolder;
    goto :goto_0
.end method
