.class public Lim/doit/pro/ui/component/SelectWorkingHoursDialog;
.super Ljava/lang/Object;
.source "SelectWorkingHoursDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectWorkingHoursDialog$OnSelectWorkingHoursDoneListner;
    }
.end annotation


# instance fields
.field private closeBtn:Landroid/widget/Button;

.field private mContentWrap:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDoneListener:Lim/doit/pro/ui/component/SelectWorkingHoursDialog$OnSelectWorkingHoursDoneListner;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectWorkingHoursDialog;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SelectWorkingHoursDialog;)Lim/doit/pro/ui/component/SelectWorkingHoursDialog$OnSelectWorkingHoursDoneListner;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mDoneListener:Lim/doit/pro/ui/component/SelectWorkingHoursDialog$OnSelectWorkingHoursDoneListner;

    return-object v0
.end method

.method private addStartEndTimePicker()V
    .locals 6

    .prologue
    .line 63
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v1

    .line 64
    .local v1, "startDate":Ljava/util/Calendar;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/User;->getWorkingStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/User;->getWorkingStartTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HH:mm"

    invoke-static {v4, v5}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    .line 66
    .local v3, "temp":Ljava/util/Calendar;
    if-eqz v3, :cond_0

    .line 67
    move-object v1, v3

    .line 70
    .end local v3    # "temp":Ljava/util/Calendar;
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v0

    .line 71
    .local v0, "endDate":Ljava/util/Calendar;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/User;->getWorkingEndTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/User;->getWorkingEndTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HH:mm"

    invoke-static {v4, v5}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    .line 73
    .restart local v3    # "temp":Ljava/util/Calendar;
    if-eqz v3, :cond_1

    .line 74
    move-object v0, v3

    .line 77
    .end local v3    # "temp":Ljava/util/Calendar;
    :cond_1
    new-instance v2, Lim/doit/pro/ui/component/DStartEndTimePicker;

    iget-object v4, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v1, v0}, Lim/doit/pro/ui/component/DStartEndTimePicker;-><init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 78
    .local v2, "startTimePicker":Lim/doit/pro/ui/component/DStartEndTimePicker;
    new-instance v4, Lim/doit/pro/ui/component/SelectWorkingHoursDialog$2;

    invoke-direct {v4, p0}, Lim/doit/pro/ui/component/SelectWorkingHoursDialog$2;-><init>(Lim/doit/pro/ui/component/SelectWorkingHoursDialog;)V

    invoke-virtual {v2, v4}, Lim/doit/pro/ui/component/DStartEndTimePicker;->setOnSelectStartEndTimeListener(Lim/doit/pro/ui/component/DStartEndTimePicker$OnSelectStartEndTimeListener;)V

    .line 96
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mContentWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public setOnSelectDateTimeListner(Lim/doit/pro/ui/component/SelectWorkingHoursDialog$OnSelectWorkingHoursDoneListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/SelectWorkingHoursDialog$OnSelectWorkingHoursDoneListner;

    .prologue
    .line 36
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mDoneListener:Lim/doit/pro/ui/component/SelectWorkingHoursDialog$OnSelectWorkingHoursDoneListner;

    .line 37
    return-void
.end method

.method public showDialog()V
    .locals 5

    .prologue
    .line 45
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mDialog:Landroid/app/Dialog;

    .line 46
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300a2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b00b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mContentWrap:Landroid/widget/LinearLayout;

    .line 48
    const v1, 0x7f0b0112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->closeBtn:Landroid/widget/Button;

    .line 49
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mContentWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 50
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->addStartEndTimePicker()V

    .line 51
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 52
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 53
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->closeBtn:Landroid/widget/Button;

    new-instance v2, Lim/doit/pro/ui/component/SelectWorkingHoursDialog$1;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/SelectWorkingHoursDialog$1;-><init>(Lim/doit/pro/ui/component/SelectWorkingHoursDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method
