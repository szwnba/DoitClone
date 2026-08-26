.class Lim/doit/pro/activity/UserTimeFormatActivity$2;
.super Ljava/lang/Object;
.source "UserTimeFormatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/UserTimeFormatActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/UserTimeFormatActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/UserTimeFormatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/UserTimeFormatActivity$2;->this$0:Lim/doit/pro/activity/UserTimeFormatActivity;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lim/doit/pro/activity/UserTimeFormatActivity$2;->this$0:Lim/doit/pro/activity/UserTimeFormatActivity;

    invoke-static {v0}, Lim/doit/pro/activity/UserTimeFormatActivity;->access$0(Lim/doit/pro/activity/UserTimeFormatActivity;)Lim/doit/pro/model/User;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lim/doit/pro/model/User;->setTimeFormat(I)V

    .line 83
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    iget-object v1, p0, Lim/doit/pro/activity/UserTimeFormatActivity$2;->this$0:Lim/doit/pro/activity/UserTimeFormatActivity;

    invoke-static {v1}, Lim/doit/pro/activity/UserTimeFormatActivity;->access$0(Lim/doit/pro/activity/UserTimeFormatActivity;)Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/UserDao;->updateAndSaveLog(Lim/doit/pro/model/User;)V

    .line 84
    iget-object v0, p0, Lim/doit/pro/activity/UserTimeFormatActivity$2;->this$0:Lim/doit/pro/activity/UserTimeFormatActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/UserTimeFormatActivity;->finish()V

    .line 85
    return-void
.end method
