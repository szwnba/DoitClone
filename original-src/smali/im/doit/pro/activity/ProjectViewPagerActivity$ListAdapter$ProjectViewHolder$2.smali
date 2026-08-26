.class Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$2;
.super Ljava/lang/Object;
.source "ProjectViewPagerActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$2;->this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemove(Lim/doit/pro/model/Media;)V
    .locals 2
    .param p1, "media"    # Lim/doit/pro/model/Media;

    .prologue
    .line 376
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$2;->this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->access$1(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/model/Project;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getMedias()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$2;->this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->access$1(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/model/Project;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$2;->this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    invoke-static {v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->access$1(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/model/Project;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getMedias()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setMedias(Ljava/util/ArrayList;)V

    .line 378
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$2;->this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$2;->this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    invoke-static {v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->access$1(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/model/Project;

    move-result-object v1

    invoke-static {v0, v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;Lim/doit/pro/model/Project;)V

    .line 379
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$2;->this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    invoke-static {v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->access$1(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/model/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    .line 380
    return-void
.end method
