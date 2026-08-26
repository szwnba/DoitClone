.class Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$1;
.super Ljava/lang/Object;
.source "SubTaskSortDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$1;->this$1:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$1;->this$1:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->access$2(Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;)Lim/doit/pro/ui/component/SubTaskSortDialog;

    move-result-object v0

    invoke-static {v0, p1}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$5(Lim/doit/pro/ui/component/SubTaskSortDialog;Landroid/view/View;)V

    .line 126
    return-void
.end method
