.class Lim/doit/pro/activity/AccountInfoActivity$4;
.super Ljava/lang/Object;
.source "AccountInfoActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AccountInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AccountInfoActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AccountInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AccountInfoActivity$4;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/AccountInfoActivity$4;)Lim/doit/pro/activity/AccountInfoActivity;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity$4;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 332
    new-instance v0, Lim/doit/pro/ui/component/SelectDateTimeDialog;

    .line 333
    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity$4;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    .line 332
    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;-><init>(Landroid/app/Activity;)V

    .line 334
    .local v0, "dialog":Lim/doit/pro/ui/component/SelectDateTimeDialog;
    new-instance v1, Lim/doit/pro/activity/AccountInfoActivity$4$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/AccountInfoActivity$4$1;-><init>(Lim/doit/pro/activity/AccountInfoActivity$4;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->setOnSelectDateTimeListner(Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;)V

    .line 343
    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity$4;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AccountInfoActivity;->access$3(Lim/doit/pro/activity/AccountInfoActivity;)Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getBirthday()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->showDialog(Ljava/util/Calendar;ZZ)V

    .line 344
    return-void
.end method
