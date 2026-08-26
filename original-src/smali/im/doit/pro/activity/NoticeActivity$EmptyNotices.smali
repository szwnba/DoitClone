.class Lim/doit/pro/activity/NoticeActivity$EmptyNotices;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "NoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/NoticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyNotices"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/asynctask/DoitAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/NoticeActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/NoticeActivity;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/activity/NoticeActivity$EmptyNotices;)V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;-><init>(Lim/doit/pro/activity/NoticeActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 370
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v1}, Lim/doit/pro/activity/NoticeActivity;->access$1(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v1}, Lim/doit/pro/activity/NoticeActivity;->access$1(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 375
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v1}, Lim/doit/pro/activity/NoticeActivity;->access$1(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 376
    const/4 v1, 0x0

    return-object v1

    .line 371
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .line 372
    .local v0, "item":Lim/doit/pro/activity/NoticeActivity$NoticeVo;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->noticeDao:Lim/doit/pro/db/persist/NoticeDao;

    iget-object v3, v0, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/NoticeDao;->delete(Lim/doit/pro/model/Notice;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 381
    invoke-super {p0, p1}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity;->access$4(Lim/doit/pro/activity/NoticeActivity;)Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->notifyDataSetChanged()V

    .line 383
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 384
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity;->access$6(Lim/doit/pro/activity/NoticeActivity;)V

    .line 385
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/NoticeActivity;->access$7(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/activity/NoticeActivity$EmptyNotices;)V

    .line 386
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 366
    return-void
.end method
