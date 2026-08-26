.class Lim/doit/pro/activity/UserWeekStartsOnActivity$1;
.super Ljava/lang/Object;
.source "UserWeekStartsOnActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/UserWeekStartsOnActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/UserWeekStartsOnActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/UserWeekStartsOnActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/UserWeekStartsOnActivity$1;->this$0:Lim/doit/pro/activity/UserWeekStartsOnActivity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 77
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 78
    .local v0, "radioButton":Landroid/widget/RadioButton;
    iget-object v1, p0, Lim/doit/pro/activity/UserWeekStartsOnActivity$1;->this$0:Lim/doit/pro/activity/UserWeekStartsOnActivity;

    invoke-static {v1}, Lim/doit/pro/activity/UserWeekStartsOnActivity;->access$0(Lim/doit/pro/activity/UserWeekStartsOnActivity;)Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setWeekStart(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    iget-object v2, p0, Lim/doit/pro/activity/UserWeekStartsOnActivity$1;->this$0:Lim/doit/pro/activity/UserWeekStartsOnActivity;

    invoke-static {v2}, Lim/doit/pro/activity/UserWeekStartsOnActivity;->access$0(Lim/doit/pro/activity/UserWeekStartsOnActivity;)Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/UserDao;->updateAndSaveLog(Lim/doit/pro/model/User;)V

    .line 80
    iget-object v1, p0, Lim/doit/pro/activity/UserWeekStartsOnActivity$1;->this$0:Lim/doit/pro/activity/UserWeekStartsOnActivity;

    invoke-virtual {v1}, Lim/doit/pro/activity/UserWeekStartsOnActivity;->finish()V

    .line 81
    return-void
.end method
