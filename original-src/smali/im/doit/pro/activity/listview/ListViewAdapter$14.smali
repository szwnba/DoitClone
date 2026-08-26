.class Lim/doit/pro/activity/listview/ListViewAdapter$14;
.super Ljava/lang/Object;
.source "ListViewAdapter.java"

# interfaces
.implements Lim/doit/pro/controller/DeleteTaskContext$DeleteTaskContextFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listview/ListViewAdapter;->deleteTaskContext(Lim/doit/pro/model/TaskContext;)V
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
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$14;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$14;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$3(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 1123
    return-void
.end method
