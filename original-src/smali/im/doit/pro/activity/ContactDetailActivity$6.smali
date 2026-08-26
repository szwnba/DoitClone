.class Lim/doit/pro/activity/ContactDetailActivity$6;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ContactDetailActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ContactDetailActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ContactDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ContactDetailActivity$6;->this$0:Lim/doit/pro/activity/ContactDetailActivity;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ContactDetailActivity$6;)Lim/doit/pro/activity/ContactDetailActivity;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity$6;->this$0:Lim/doit/pro/activity/ContactDetailActivity;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 161
    new-instance v1, Lim/doit/pro/ui/component/SelectDateTimeDialog;

    .line 162
    iget-object v2, p0, Lim/doit/pro/activity/ContactDetailActivity$6;->this$0:Lim/doit/pro/activity/ContactDetailActivity;

    .line 161
    invoke-direct {v1, v2}, Lim/doit/pro/ui/component/SelectDateTimeDialog;-><init>(Landroid/app/Activity;)V

    .line 163
    .local v1, "dialog":Lim/doit/pro/ui/component/SelectDateTimeDialog;
    iget-object v2, p0, Lim/doit/pro/activity/ContactDetailActivity$6;->this$0:Lim/doit/pro/activity/ContactDetailActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ContactDetailActivity;->access$0(Lim/doit/pro/activity/ContactDetailActivity;)Lim/doit/pro/model/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Contact;->getBirthday()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 164
    .local v0, "birthday":Ljava/util/Calendar;
    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 166
    const/16 v2, 0x7bc

    invoke-virtual {v0, v2, v4, v3}, Ljava/util/Calendar;->set(III)V

    .line 168
    :cond_0
    invoke-virtual {v1, v4}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->setDisplayDatePickerTopbarBtns(Z)V

    .line 169
    new-instance v2, Lim/doit/pro/activity/ContactDetailActivity$6$1;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/ContactDetailActivity$6$1;-><init>(Lim/doit/pro/activity/ContactDetailActivity$6;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->setOnSelectDateTimeListner(Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;)V

    .line 177
    invoke-virtual {v1, v0, v3, v3}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->showDialog(Ljava/util/Calendar;ZZ)V

    .line 178
    return-void
.end method
