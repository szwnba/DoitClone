.class Lim/doit/pro/activity/FilterListFragment$LoadingFilters;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "FilterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/FilterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingFilters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/asynctask/DoitAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lim/doit/pro/model/Filter;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/FilterListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/FilterListFragment;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;->this$0:Lim/doit/pro/activity/FilterListFragment;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/FilterListFragment;Lim/doit/pro/activity/FilterListFragment$LoadingFilters;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;-><init>(Lim/doit/pro/activity/FilterListFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/FilterListFragment;Lim/doit/pro/activity/FilterListFragment$LoadingFilters;Lim/doit/pro/activity/FilterListFragment$LoadingFilters;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;-><init>(Lim/doit/pro/activity/FilterListFragment;)V

    return-void
.end method

.method private dimissDialog()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;->this$0:Lim/doit/pro/activity/FilterListFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/FilterListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->filterDao:Lim/doit/pro/db/persist/FilterDao;

    .line 140
    invoke-virtual {v1}, Lim/doit/pro/db/persist/FilterDao;->findAllNotHiddenNotDelete()Ljava/util/ArrayList;

    move-result-object v0

    .line 141
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Filter;>;"
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "listDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Filter;>;"
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;->this$0:Lim/doit/pro/activity/FilterListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/FilterListFragment;->access$0(Lim/doit/pro/activity/FilterListFragment;)Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->setDatasAndRefreshView(Ljava/util/ArrayList;)V

    .line 147
    invoke-static {p1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;->this$0:Lim/doit/pro/activity/FilterListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/FilterListFragment;->access$1(Lim/doit/pro/activity/FilterListFragment;)Lim/doit/pro/ui/component/ListViewEmptyView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    .line 152
    :goto_0
    invoke-direct {p0}, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;->dimissDialog()V

    .line 153
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;->this$0:Lim/doit/pro/activity/FilterListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/FilterListFragment;->access$2(Lim/doit/pro/activity/FilterListFragment;Lim/doit/pro/activity/FilterListFragment$LoadingFilters;)V

    .line 154
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;->this$0:Lim/doit/pro/activity/FilterListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/FilterListFragment;->access$1(Lim/doit/pro/activity/FilterListFragment;)Lim/doit/pro/ui/component/ListViewEmptyView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;->this$0:Lim/doit/pro/activity/FilterListFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/FilterListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 134
    return-void
.end method
