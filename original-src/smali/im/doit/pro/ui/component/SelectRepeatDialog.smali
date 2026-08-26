.class public Lim/doit/pro/ui/component/SelectRepeatDialog;
.super Ljava/lang/Object;
.source "SelectRepeatDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;,
        Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;,
        Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;
    }
.end annotation


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;",
            ">;"
        }
    .end annotation
.end field

.field private listAdapter:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private mActivity:Landroid/app/Activity;

.field private mDialog:Landroid/app/Dialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRepeater:Lim/doit/pro/model/Repeater;

.field private mStartAt:Ljava/util/Calendar;

.field private onSelectFinishListner:Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->datas:Ljava/util/ArrayList;

    .line 57
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mActivity:Landroid/app/Activity;

    .line 58
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->datas:Ljava/util/ArrayList;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;

    const v2, 0x7f0c0038

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog;ILim/doit/pro/model/enums/RepeaterMode;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->datas:Ljava/util/ArrayList;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;

    const v2, 0x7f0c00a3

    sget-object v3, Lim/doit/pro/model/enums/RepeaterMode;->daily:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-direct {v1, p0, v2, v3}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog;ILim/doit/pro/model/enums/RepeaterMode;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->datas:Ljava/util/ArrayList;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;

    const v2, 0x7f0c00a5

    sget-object v3, Lim/doit/pro/model/enums/RepeaterMode;->weekly:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-direct {v1, p0, v2, v3}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog;ILim/doit/pro/model/enums/RepeaterMode;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->datas:Ljava/util/ArrayList;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;

    const v2, 0x7f0c00a4

    sget-object v3, Lim/doit/pro/model/enums/RepeaterMode;->weekly:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-direct {v1, p0, v2, v3}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog;ILim/doit/pro/model/enums/RepeaterMode;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->datas:Ljava/util/ArrayList;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;

    const v2, 0x7f0c00a6

    sget-object v3, Lim/doit/pro/model/enums/RepeaterMode;->monthly:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-direct {v1, p0, v2, v3}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog;ILim/doit/pro/model/enums/RepeaterMode;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->datas:Ljava/util/ArrayList;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;

    const v2, 0x7f0c00a7

    sget-object v3, Lim/doit/pro/model/enums/RepeaterMode;->yearly:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-direct {v1, p0, v2, v3}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog;ILim/doit/pro/model/enums/RepeaterMode;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectRepeatDialog;)Lim/doit/pro/model/Repeater;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SelectRepeatDialog;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$10(Lim/doit/pro/ui/component/SelectRepeatDialog;)Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->onSelectFinishListner:Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;

    return-object v0
.end method

.method static synthetic access$11(Lim/doit/pro/ui/component/SelectRepeatDialog;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeatDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectRepeatDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->datas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/SelectRepeatDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/SelectRepeatDialog;)Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->listAdapter:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/SelectRepeatDialog;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeatDialog;->onDailyClick()V

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/ui/component/SelectRepeatDialog;Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeatDialog;->onWeeklyClick(Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;)V

    return-void
.end method

.method static synthetic access$7(Lim/doit/pro/ui/component/SelectRepeatDialog;)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeatDialog;->onMonthlyClick()V

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/ui/component/SelectRepeatDialog;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeatDialog;->onYearlyClick()V

    return-void
.end method

.method static synthetic access$9(Lim/doit/pro/ui/component/SelectRepeatDialog;Lim/doit/pro/model/Repeater;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 123
    :cond_0
    return-void
.end method

.method private onDailyClick()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    .line 212
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mActivity:Landroid/app/Activity;

    .line 211
    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;-><init>(Landroid/app/Activity;)V

    .line 213
    .local v0, "dailyDialog":Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->showDialog(Lim/doit/pro/model/Repeater;)V

    .line 215
    new-instance v1, Lim/doit/pro/ui/component/SelectRepeatDialog$3;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SelectRepeatDialog$3;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->setOnSelectDailyFinishListner(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnSelectDailyFinishListner;)V

    .line 224
    return-void
.end method

.method private onMonthlyClick()V
    .locals 3

    .prologue
    .line 255
    new-instance v0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    .line 256
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mActivity:Landroid/app/Activity;

    .line 255
    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;-><init>(Landroid/app/Activity;)V

    .line 257
    .local v0, "monthlyDialog":Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mStartAt:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->showDialog(Lim/doit/pro/model/Repeater;Ljava/util/Calendar;)V

    .line 259
    new-instance v1, Lim/doit/pro/ui/component/SelectRepeatDialog$5;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SelectRepeatDialog$5;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->setOnSelectMonthlyFinishListner(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnSelectMonthlyFinishListner;)V

    .line 268
    return-void
.end method

.method private onWeeklyClick(Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;)V
    .locals 4
    .param p1, "data"    # Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;

    .prologue
    .line 227
    const v2, 0x7f0c00a5

    iget v3, p1, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;->name:I

    if-ne v2, v3, :cond_1

    .line 228
    new-instance v2, Lim/doit/pro/model/Repeater;

    invoke-direct {v2}, Lim/doit/pro/model/Repeater;-><init>()V

    iput-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    .line 229
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    sget-object v3, Lim/doit/pro/model/enums/RepeaterMode;->weekly:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/Repeater;->setMode(Lim/doit/pro/model/enums/RepeaterMode;)V

    .line 230
    new-instance v0, Lim/doit/pro/model/RepeaterWeekly;

    invoke-direct {v0}, Lim/doit/pro/model/RepeaterWeekly;-><init>()V

    .line 231
    .local v0, "weekly":Lim/doit/pro/model/RepeaterWeekly;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lim/doit/pro/model/RepeaterWeekly;->setCycle(I)V

    .line 232
    sget-object v2, Lim/doit/pro/model/RepeaterWeekly;->WORK_DAYS:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lim/doit/pro/model/RepeaterWeekly;->setDays(Ljava/util/ArrayList;)V

    .line 233
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v2, v0}, Lim/doit/pro/model/Repeater;->setWeekly(Lim/doit/pro/model/RepeaterWeekly;)V

    .line 234
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->onSelectFinishListner:Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->onSelectFinishListner:Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;

    iget-object v3, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-interface {v2, v3}, Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;->finish(Lim/doit/pro/model/Repeater;)V

    .line 252
    .end local v0    # "weekly":Lim/doit/pro/model/RepeaterWeekly;
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    .line 239
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mActivity:Landroid/app/Activity;

    .line 238
    invoke-direct {v1, v2}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;-><init>(Landroid/app/Activity;)V

    .line 240
    .local v1, "weeklyDialog":Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->showDialog(Lim/doit/pro/model/Repeater;)V

    .line 242
    new-instance v2, Lim/doit/pro/ui/component/SelectRepeatDialog$4;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/SelectRepeatDialog$4;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->setOnSelectWeeklyFinishListner(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnSelectWeeklyFinishListner;)V

    goto :goto_0
.end method

.method private onYearlyClick()V
    .locals 3

    .prologue
    .line 271
    new-instance v0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;

    .line 272
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mActivity:Landroid/app/Activity;

    .line 271
    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;-><init>(Landroid/app/Activity;)V

    .line 273
    .local v0, "dailyDialog":Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mStartAt:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->showDialog(Lim/doit/pro/model/Repeater;Ljava/util/Calendar;)V

    .line 275
    new-instance v1, Lim/doit/pro/ui/component/SelectRepeatDialog$6;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SelectRepeatDialog$6;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->setOnSelectYearlyFinishListner(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnSelectYearlyFinishListner;)V

    .line 284
    return-void
.end method


# virtual methods
.method public setOnSelectFinishListner(Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;

    .prologue
    .line 53
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->onSelectFinishListner:Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;

    .line 54
    return-void
.end method

.method public showDialog(Lim/doit/pro/model/Repeater;Ljava/util/Calendar;)V
    .locals 5
    .param p1, "repeater"    # Lim/doit/pro/model/Repeater;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x0

    .line 68
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    .line 69
    iput-object p2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mStartAt:Ljava/util/Calendar;

    .line 70
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mStartAt:Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mStartAt:Ljava/util/Calendar;

    .line 73
    :cond_0
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mDialog:Landroid/app/Dialog;

    .line 74
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    const v2, 0x7f030062

    const/4 v3, 0x0

    .line 74
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->cancelBtn:Landroid/widget/Button;

    .line 77
    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->listView:Landroid/widget/ListView;

    .line 78
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->listView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 79
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c00f6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 80
    new-instance v1, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    invoke-direct {v1, p0, v4}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog;Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;)V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->listAdapter:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    .line 81
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->listAdapter:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 83
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 84
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->listView:Landroid/widget/ListView;

    new-instance v2, Lim/doit/pro/ui/component/SelectRepeatDialog$1;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/SelectRepeatDialog$1;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog;->cancelBtn:Landroid/widget/Button;

    new-instance v2, Lim/doit/pro/ui/component/SelectRepeatDialog$2;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/SelectRepeatDialog$2;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method
