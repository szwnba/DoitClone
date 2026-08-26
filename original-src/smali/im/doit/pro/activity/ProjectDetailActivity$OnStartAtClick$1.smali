.class Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick$1;
.super Ljava/lang/Object;
.source "ProjectDetailActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "attribute"    # Lim/doit/pro/model/enums/Attribute;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    .line 451
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lim/doit/pro/utils/ProjectUtils;->updateProjectStartAt(Lim/doit/pro/model/Project;Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V

    .line 453
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$5(Lim/doit/pro/activity/ProjectDetailActivity;)V

    .line 454
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$6(Lim/doit/pro/activity/ProjectDetailActivity;)V

    .line 455
    return-void
.end method
