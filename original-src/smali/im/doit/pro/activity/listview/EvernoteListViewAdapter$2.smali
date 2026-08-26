.class Lim/doit/pro/activity/listview/EvernoteListViewAdapter$2;
.super Ljava/lang/Object;
.source "EvernoteListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/listview/EvernoteListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/listview/EvernoteListViewAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$2;->this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$2;->this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    iget-object v0, v0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$2;->this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Media;

    iput-object v0, v1, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mCurrentMedia:Lim/doit/pro/model/Media;

    .line 134
    iget-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$2;->this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    invoke-static {v0}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->access$1(Lim/doit/pro/activity/listview/EvernoteListViewAdapter;)V

    goto :goto_0
.end method
