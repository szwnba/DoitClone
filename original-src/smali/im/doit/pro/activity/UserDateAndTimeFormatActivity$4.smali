.class Lim/doit/pro/activity/UserDateAndTimeFormatActivity$4;
.super Ljava/lang/Object;
.source "UserDateAndTimeFormatActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/UserDateAndTimeFormatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/UserDateAndTimeFormatActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/UserDateAndTimeFormatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$4;->this$0:Lim/doit/pro/activity/UserDateAndTimeFormatActivity;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/UserDateAndTimeFormatActivity$4;)Lim/doit/pro/activity/UserDateAndTimeFormatActivity;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$4;->this$0:Lim/doit/pro/activity/UserDateAndTimeFormatActivity;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    new-instance v0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;

    iget-object v1, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$4;->this$0:Lim/doit/pro/activity/UserDateAndTimeFormatActivity;

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, "dialog":Lim/doit/pro/ui/component/SelectWorkingHoursDialog;
    new-instance v1, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$4$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$4$1;-><init>(Lim/doit/pro/activity/UserDateAndTimeFormatActivity$4;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->setOnSelectDateTimeListner(Lim/doit/pro/ui/component/SelectWorkingHoursDialog$OnSelectWorkingHoursDoneListner;)V

    .line 145
    invoke-virtual {v0}, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->showDialog()V

    .line 146
    return-void
.end method
