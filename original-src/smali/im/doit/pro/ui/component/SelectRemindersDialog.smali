.class public Lim/doit/pro/ui/component/SelectRemindersDialog;
.super Ljava/lang/Object;
.source "SelectRemindersDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;,
        Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;,
        Lim/doit/pro/ui/component/SelectRemindersDialog$OnSelectRemindersFinishListner;
    }
.end annotation


# static fields
.field private static final MAX_SELECTED:I = 0x5

.field private static final RELIVATE_TIMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addBtn:Landroid/widget/ImageButton;

.field private cancelBtn:Landroid/widget/Button;

.field private mActivity:Landroid/app/Activity;

.field private mAddBtnEnabled:Z

.field private mAllday:Z

.field private mDialog:Landroid/app/Dialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListAdapter:Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field mSelectedAbsoluteTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedRelativeTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStartAt:Ljava/util/Calendar;

.field private okBtn:Landroid/widget/Button;

.field private onAddClick:Landroid/view/View$OnClickListener;

.field private onCancalClick:Landroid/view/View$OnClickListener;

.field private onDownBtnClick:Landroid/view/View$OnClickListener;

.field private onOKClick:Landroid/view/View$OnClickListener;

.field private onSelectRemindersFinishListner:Lim/doit/pro/ui/component/SelectRemindersDialog$OnSelectRemindersFinishListner;

.field private onSwitchCheckedChangeLintener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private onUpBtnClick:Landroid/view/View$OnClickListener;

.field private onUpdateAbsoluteClick:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const/16 v2, 0x5a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xb40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lim/doit/pro/ui/component/SelectRemindersDialog;->RELIVATE_TIMES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListData:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mSelectedRelativeTimes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mSelectedAbsoluteTimes:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Lim/doit/pro/ui/component/SelectRemindersDialog$1;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/SelectRemindersDialog$1;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onUpdateAbsoluteClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 185
    new-instance v0, Lim/doit/pro/ui/component/SelectRemindersDialog$2;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/SelectRemindersDialog$2;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onAddClick:Landroid/view/View$OnClickListener;

    .line 213
    new-instance v0, Lim/doit/pro/ui/component/SelectRemindersDialog$3;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/SelectRemindersDialog$3;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onCancalClick:Landroid/view/View$OnClickListener;

    .line 221
    new-instance v0, Lim/doit/pro/ui/component/SelectRemindersDialog$4;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/SelectRemindersDialog$4;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onOKClick:Landroid/view/View$OnClickListener;

    .line 446
    new-instance v0, Lim/doit/pro/ui/component/SelectRemindersDialog$5;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/SelectRemindersDialog$5;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onSwitchCheckedChangeLintener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 491
    new-instance v0, Lim/doit/pro/ui/component/SelectRemindersDialog$6;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/SelectRemindersDialog$6;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onUpBtnClick:Landroid/view/View$OnClickListener;

    .line 522
    new-instance v0, Lim/doit/pro/ui/component/SelectRemindersDialog$7;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/SelectRemindersDialog$7;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onDownBtnClick:Landroid/view/View$OnClickListener;

    .line 63
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mActivity:Landroid/app/Activity;

    .line 64
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$10(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onSwitchCheckedChangeLintener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$11(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onUpBtnClick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$12(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onDownBtnClick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectRemindersDialog;)Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListAdapter:Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/SelectRemindersDialog;)Z
    .locals 1

    .prologue
    .line 433
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->isMaxLimit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/SelectRemindersDialog;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/SelectRemindersDialog;)Lim/doit/pro/ui/component/SelectRemindersDialog$OnSelectRemindersFinishListner;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onSelectRemindersFinishListner:Lim/doit/pro/ui/component/SelectRemindersDialog$OnSelectRemindersFinishListner;

    return-object v0
.end method

.method static synthetic access$6(Lim/doit/pro/ui/component/SelectRemindersDialog;Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRemindersDialog;->autoAddRelivateReminder(Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;)V

    return-void
.end method

.method static synthetic access$7(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mStartAt:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$8()Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lim/doit/pro/ui/component/SelectRemindersDialog;->RELIVATE_TIMES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private autoAddRelivateReminder(Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;)V
    .locals 6
    .param p1, "listData"    # Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    .prologue
    const/4 v5, 0x0

    .line 464
    iget-boolean v0, p1, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->isSelected:Z

    .line 465
    .local v0, "isSelected":Z
    iget-object v2, p1, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->reminder:Lim/doit/pro/model/Reminder;

    .line 466
    .local v2, "reminder":Lim/doit/pro/model/Reminder;
    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lim/doit/pro/model/Reminder;->isRelative()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->isAddableRelivate()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->isMaxLimit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 467
    sget-object v3, Lim/doit/pro/ui/component/SelectRemindersDialog;->RELIVATE_TIMES:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lim/doit/pro/ui/component/SelectRemindersDialog;->buildRelativeReminder(I)Lim/doit/pro/model/Reminder;

    move-result-object v1

    .line 468
    .local v1, "newReminder":Lim/doit/pro/model/Reminder;
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListData:Ljava/util/ArrayList;

    new-instance v4, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    invoke-direct {v4, p0, v1, v5}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;Lim/doit/pro/model/Reminder;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListAdapter:Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->notifyDataSetChanged()V

    .line 471
    .end local v1    # "newReminder":Lim/doit/pro/model/Reminder;
    :cond_0
    return-void
.end method

.method private buildOnTimeReminder()Lim/doit/pro/model/Reminder;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->buildRelativeReminder(I)Lim/doit/pro/model/Reminder;

    move-result-object v0

    return-object v0
.end method

.method private buildRelativeReminder(I)Lim/doit/pro/model/Reminder;
    .locals 4
    .param p1, "minute"    # I

    .prologue
    .line 150
    new-instance v0, Lim/doit/pro/model/Reminder;

    invoke-direct {v0}, Lim/doit/pro/model/Reminder;-><init>()V

    .line 151
    .local v0, "reminder":Lim/doit/pro/model/Reminder;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Reminder;->setUuid(Ljava/lang/String;)V

    .line 152
    const-string v2, "popup"

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Reminder;->setMode(Ljava/lang/String;)V

    .line 153
    const-string v2, "relative"

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Reminder;->setView(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mStartAt:Ljava/util/Calendar;

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 155
    .local v1, "reminderTime":Ljava/util/Calendar;
    const/16 v2, 0xc

    neg-int v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 156
    invoke-virtual {v0, v1}, Lim/doit/pro/model/Reminder;->setTime(Ljava/util/Calendar;)V

    .line 157
    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 269
    :cond_0
    return-void
.end method

.method private initData(Ljava/util/ArrayList;Ljava/util/Calendar;ZZ)V
    .locals 10
    .param p2, "startAt"    # Ljava/util/Calendar;
    .param p3, "allday"    # Z
    .param p4, "isRepeat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Reminder;",
            ">;",
            "Ljava/util/Calendar;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "selectedReminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    iput-boolean p3, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mAllday:Z

    .line 97
    const/4 v4, 0x0

    iput-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mStartAt:Ljava/util/Calendar;

    .line 98
    if-eqz p2, :cond_0

    .line 99
    invoke-static {p2}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mStartAt:Ljava/util/Calendar;

    .line 100
    iget-boolean v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mAllday:Z

    if-eqz v4, :cond_0

    .line 101
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mStartAt:Ljava/util/Calendar;

    invoke-static {v4}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 104
    :cond_0
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mSelectedRelativeTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 105
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mSelectedAbsoluteTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 107
    invoke-static {p1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 118
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 119
    .local v2, "now":Ljava/util/Calendar;
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mStartAt:Ljava/util/Calendar;

    if-eqz v4, :cond_3

    .line 120
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mStartAt:Ljava/util/Calendar;

    invoke-static {v4, v2}, Lim/doit/pro/utils/DateUtils;->diffMinute(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    .line 121
    .local v0, "diffMinute":I
    const/4 v4, 0x5

    if-lt v0, v4, :cond_6

    .line 122
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->buildOnTimeReminder()Lim/doit/pro/model/Reminder;

    move-result-object v3

    .line 123
    .local v3, "reminder":Lim/doit/pro/model/Reminder;
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mSelectedRelativeTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 124
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListData:Ljava/util/ArrayList;

    new-instance v7, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    invoke-direct {v7, p0, v3, v5}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;Lim/doit/pro/model/Reminder;Z)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    sget-object v4, Lim/doit/pro/ui/component/SelectRemindersDialog;->RELIVATE_TIMES:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lim/doit/pro/ui/component/SelectRemindersDialog;->buildRelativeReminder(I)Lim/doit/pro/model/Reminder;

    move-result-object v3

    .line 127
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mSelectedRelativeTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 128
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListData:Ljava/util/ArrayList;

    new-instance v7, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    invoke-direct {v7, p0, v3, v5}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;Lim/doit/pro/model/Reminder;Z)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v0    # "diffMinute":I
    .end local v3    # "reminder":Lim/doit/pro/model/Reminder;
    :cond_3
    :goto_1
    if-eqz p4, :cond_8

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mAddBtnEnabled:Z

    .line 143
    return-void

    .line 108
    .end local v2    # "now":Ljava/util/Calendar;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Reminder;

    .line 109
    .local v1, "item":Lim/doit/pro/model/Reminder;
    invoke-virtual {v1, v5}, Lim/doit/pro/model/Reminder;->deepClone(I)Lim/doit/pro/model/Reminder;

    move-result-object v3

    .line 110
    .restart local v3    # "reminder":Lim/doit/pro/model/Reminder;
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListData:Ljava/util/ArrayList;

    new-instance v8, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    invoke-direct {v8, p0, v3, v6}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;Lim/doit/pro/model/Reminder;Z)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v3}, Lim/doit/pro/model/Reminder;->isRelative()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 112
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mSelectedRelativeTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 114
    :cond_5
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mSelectedAbsoluteTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 130
    .end local v1    # "item":Lim/doit/pro/model/Reminder;
    .end local v3    # "reminder":Lim/doit/pro/model/Reminder;
    .restart local v0    # "diffMinute":I
    .restart local v2    # "now":Ljava/util/Calendar;
    :cond_6
    if-ltz v0, :cond_7

    .line 131
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->buildOnTimeReminder()Lim/doit/pro/model/Reminder;

    move-result-object v3

    .line 132
    .restart local v3    # "reminder":Lim/doit/pro/model/Reminder;
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mSelectedRelativeTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 133
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListData:Ljava/util/ArrayList;

    new-instance v7, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    invoke-direct {v7, p0, v3, v5}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;Lim/doit/pro/model/Reminder;Z)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    .end local v3    # "reminder":Lim/doit/pro/model/Reminder;
    :cond_7
    if-eqz p4, :cond_3

    .line 136
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->buildOnTimeReminder()Lim/doit/pro/model/Reminder;

    move-result-object v3

    .line 137
    .restart local v3    # "reminder":Lim/doit/pro/model/Reminder;
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mSelectedRelativeTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 138
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListData:Ljava/util/ArrayList;

    new-instance v7, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    invoke-direct {v7, p0, v3, v5}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;Lim/doit/pro/model/Reminder;Z)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v0    # "diffMinute":I
    .end local v3    # "reminder":Lim/doit/pro/model/Reminder;
    :cond_8
    move v4, v6

    .line 142
    goto/16 :goto_2
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onUpdateAbsoluteClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->addBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onAddClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->cancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onCancalClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->okBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onOKClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method private initViewAndContent(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    const v0, 0x7f0b003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0127

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    const v0, 0x7f0b0105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->addBtn:Landroid/widget/ImageButton;

    .line 80
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->addBtn:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mAddBtnEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 81
    const v0, 0x7f0b0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->cancelBtn:Landroid/widget/Button;

    .line 82
    const v0, 0x7f0b0117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->okBtn:Landroid/widget/Button;

    .line 83
    const v0, 0x7f0b0069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListView:Landroid/widget/ListView;

    .line 84
    new-instance v0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListAdapter:Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

    .line 85
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListAdapter:Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    return-void

    .line 80
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private isAddableRelivate()Z
    .locals 5

    .prologue
    .line 479
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 488
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 479
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    .line 480
    .local v0, "item":Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;
    iget-object v1, v0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->reminder:Lim/doit/pro/model/Reminder;

    .line 481
    .local v1, "reminder":Lim/doit/pro/model/Reminder;
    invoke-virtual {v1}, Lim/doit/pro/model/Reminder;->isRelative()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->isSelected:Z

    if-nez v3, :cond_0

    .line 482
    invoke-virtual {v1}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mStartAt:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lim/doit/pro/utils/DateUtils;->diffMinute(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isMaxLimit()Z
    .locals 4

    .prologue
    .line 434
    const/4 v1, 0x0

    .line 435
    .local v1, "selectecCount":I
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 440
    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    .line 441
    const/4 v2, 0x1

    .line 443
    :goto_1
    return v2

    .line 435
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    .line 436
    .local v0, "item":Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;
    iget-boolean v3, v0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->isSelected:Z

    if-eqz v3, :cond_0

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "item":Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public setOnSelectRemindersFinishListner(Lim/doit/pro/ui/component/SelectRemindersDialog$OnSelectRemindersFinishListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/SelectRemindersDialog$OnSelectRemindersFinishListner;

    .prologue
    .line 59
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->onSelectRemindersFinishListner:Lim/doit/pro/ui/component/SelectRemindersDialog$OnSelectRemindersFinishListner;

    .line 60
    return-void
.end method

.method public showDialog(Ljava/util/ArrayList;Ljava/util/Calendar;ZZ)V
    .locals 5
    .param p2, "startAt"    # Ljava/util/Calendar;
    .param p3, "allday"    # Z
    .param p4, "isRepeat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Reminder;",
            ">;",
            "Ljava/util/Calendar;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "selectedReminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lim/doit/pro/ui/component/SelectRemindersDialog;->initData(Ljava/util/ArrayList;Ljava/util/Calendar;ZZ)V

    .line 69
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mDialog:Landroid/app/Dialog;

    .line 70
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03005c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 72
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->initViewAndContent(Landroid/view/View;)V

    .line 73
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->initListener()V

    .line 74
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 75
    return-void
.end method
