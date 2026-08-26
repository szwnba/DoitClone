.class Lim/doit/pro/activity/ContactDetailActivity$6$1;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ContactDetailActivity$6;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/ContactDetailActivity$6;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ContactDetailActivity$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ContactDetailActivity$6$1;->this$1:Lim/doit/pro/activity/ContactDetailActivity$6;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 173
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity$6$1;->this$1:Lim/doit/pro/activity/ContactDetailActivity$6;

    invoke-static {v0}, Lim/doit/pro/activity/ContactDetailActivity$6;->access$0(Lim/doit/pro/activity/ContactDetailActivity$6;)Lim/doit/pro/activity/ContactDetailActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ContactDetailActivity;->access$0(Lim/doit/pro/activity/ContactDetailActivity;)Lim/doit/pro/model/Contact;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/model/Contact;->setBirthday(Ljava/util/Calendar;)V

    .line 174
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity$6$1;->this$1:Lim/doit/pro/activity/ContactDetailActivity$6;

    invoke-static {v0}, Lim/doit/pro/activity/ContactDetailActivity$6;->access$0(Lim/doit/pro/activity/ContactDetailActivity$6;)Lim/doit/pro/activity/ContactDetailActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ContactDetailActivity;->access$1(Lim/doit/pro/activity/ContactDetailActivity;)V

    .line 175
    return-void
.end method
