.class Lim/doit/pro/activity/listview/ListViewAdapter$2;
.super Ljava/lang/Object;
.source "ListViewAdapter.java"

# interfaces
.implements Lim/doit/pro/activity/listview/TaskViewHolder$OnDoitnowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listview/ListViewAdapter;->onDoitnowClickListener()Lim/doit/pro/activity/listview/TaskViewHolder$OnDoitnowClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listview/ListViewAdapter;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$2;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doitNow(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 681
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Task;

    .line 682
    .local v2, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isToday()Z

    move-result v3

    if-nez v3, :cond_0

    .line 683
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    .line 684
    .local v0, "oriStartAt":Ljava/util/Calendar;
    sget-object v3, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 686
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 687
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v1

    .line 692
    .local v1, "startAt":Ljava/util/Calendar;
    :goto_0
    invoke-virtual {v2, v1}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 693
    invoke-virtual {v2, v0}, Lim/doit/pro/model/Task;->updateAfterStartAtChange(Ljava/util/Calendar;)V

    .line 695
    .end local v0    # "oriStartAt":Ljava/util/Calendar;
    .end local v1    # "startAt":Ljava/util/Calendar;
    :cond_0
    invoke-virtual {v2, v4}, Lim/doit/pro/model/Task;->setNow(Z)V

    .line 696
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v3, v2}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 697
    iget-object v3, p0, Lim/doit/pro/activity/listview/ListViewAdapter$2;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v3}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$3(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 698
    return-void

    .line 689
    .restart local v0    # "oriStartAt":Ljava/util/Calendar;
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 690
    .restart local v1    # "startAt":Ljava/util/Calendar;
    invoke-static {v1, v4, v4}, Lim/doit/pro/utils/DateUtils;->addCurrentDateHour(Ljava/util/Calendar;IZ)V

    goto :goto_0
.end method
