.class Lim/doit/pro/activity/listview/EvernoteListViewAdapter$1;
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
    iput-object p1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$1;->this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    iget-object v5, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$1;->this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    iget-object v5, v5, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 112
    .local v3, "pos":I
    iget-object v5, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$1;->this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    iget-object v5, v5, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mMedias:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 113
    .local v4, "urls":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 114
    .local v0, "i":I
    iget-object v5, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$1;->this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    iget-object v5, v5, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mMedias:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 118
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$1;->this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    iget-object v5, v5, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mActivity:Landroid/app/Activity;

    const-class v6, Lim/doit/pro/activity/ViewNotesActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "position"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v5, "shared_urls"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v5, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$1;->this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    iget-object v5, v5, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Media;

    .line 115
    .local v2, "media":Lim/doit/pro/model/Media;
    invoke-virtual {v2}, Lim/doit/pro/model/Media;->getUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
