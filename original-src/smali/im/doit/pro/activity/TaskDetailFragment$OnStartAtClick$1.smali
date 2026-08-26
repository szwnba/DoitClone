.class Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick$1;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;

    .line 1343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "attribute"    # Lim/doit/pro/model/enums/Attribute;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    .line 1347
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lim/doit/pro/activity/TaskDetailFragment;->access$16(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V

    .line 1348
    return-void
.end method
