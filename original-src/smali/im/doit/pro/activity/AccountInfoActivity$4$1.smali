.class Lim/doit/pro/activity/AccountInfoActivity$4$1;
.super Ljava/lang/Object;
.source "AccountInfoActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/AccountInfoActivity$4;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/AccountInfoActivity$4;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AccountInfoActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AccountInfoActivity$4$1;->this$1:Lim/doit/pro/activity/AccountInfoActivity$4;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 338
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity$4$1;->this$1:Lim/doit/pro/activity/AccountInfoActivity$4;

    invoke-static {v0}, Lim/doit/pro/activity/AccountInfoActivity$4;->access$0(Lim/doit/pro/activity/AccountInfoActivity$4;)Lim/doit/pro/activity/AccountInfoActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/AccountInfoActivity;->access$3(Lim/doit/pro/activity/AccountInfoActivity;)Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/model/User;->setBirthday(Ljava/util/Calendar;)V

    .line 339
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity$4$1;->this$1:Lim/doit/pro/activity/AccountInfoActivity$4;

    invoke-static {v1}, Lim/doit/pro/activity/AccountInfoActivity$4;->access$0(Lim/doit/pro/activity/AccountInfoActivity$4;)Lim/doit/pro/activity/AccountInfoActivity;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/AccountInfoActivity;->access$3(Lim/doit/pro/activity/AccountInfoActivity;)Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/UserDao;->updateAndSaveLog(Lim/doit/pro/model/User;)V

    .line 340
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity$4$1;->this$1:Lim/doit/pro/activity/AccountInfoActivity$4;

    invoke-static {v0}, Lim/doit/pro/activity/AccountInfoActivity$4;->access$0(Lim/doit/pro/activity/AccountInfoActivity$4;)Lim/doit/pro/activity/AccountInfoActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/AccountInfoActivity;->access$4(Lim/doit/pro/activity/AccountInfoActivity;)V

    .line 341
    return-void
.end method
