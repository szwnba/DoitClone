.class public Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;
.super Ljava/lang/Object;
.source "SelectRepeaterDailyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnCancelClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnDownClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnOKClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnSelectDailyFinishListner;,
        Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUpClickListener;
    }
.end annotation


# static fields
.field private static final MAX_CYCLE:I = 0x3c

.field private static final MIN_CYCLE:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancelBtn:Landroid/widget/Button;

.field private mCycleTV:Landroid/widget/TextView;

.field private mDialog:Landroid/app/Dialog;

.field private mDownBtn:Landroid/widget/ImageButton;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOKBtn:Landroid/widget/Button;

.field private mOnSelectDailyFinishListner:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnSelectDailyFinishListner;

.field private mRepeater:Lim/doit/pro/model/Repeater;

.field private mUnitTV:Landroid/widget/TextView;

.field private mUntilBtn:Landroid/widget/Button;

.field private mUpBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mActivity:Landroid/app/Activity;

    .line 52
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)Lim/doit/pro/model/Repeater;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->setCycleViewContent()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnSelectDailyFinishListner;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mOnSelectDailyFinishListner:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnSelectDailyFinishListner;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->setUntilViewContent()V

    return-void
.end method

.method private initData(Lim/doit/pro/model/Repeater;)V
    .locals 3
    .param p1, "repeater"    # Lim/doit/pro/model/Repeater;

    .prologue
    .line 69
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    .line 70
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    if-eqz v1, :cond_0

    sget-object v1, Lim/doit/pro/model/enums/RepeaterMode;->daily:Lim/doit/pro/model/enums/RepeaterMode;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getMode()Lim/doit/pro/model/enums/RepeaterMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    :cond_0
    new-instance v1, Lim/doit/pro/model/Repeater;

    invoke-direct {v1}, Lim/doit/pro/model/Repeater;-><init>()V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    .line 72
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    sget-object v2, Lim/doit/pro/model/enums/RepeaterMode;->daily:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Repeater;->setMode(Lim/doit/pro/model/enums/RepeaterMode;)V

    .line 73
    new-instance v0, Lim/doit/pro/model/RepeaterDaily;

    invoke-direct {v0}, Lim/doit/pro/model/RepeaterDaily;-><init>()V

    .line 74
    .local v0, "daily":Lim/doit/pro/model/RepeaterDaily;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/RepeaterDaily;->setCycle(I)V

    .line 75
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v1, v0}, Lim/doit/pro/model/Repeater;->setDaily(Lim/doit/pro/model/RepeaterDaily;)V

    .line 77
    .end local v0    # "daily":Lim/doit/pro/model/RepeaterDaily;
    :cond_1
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mUpBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUpClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUpClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUpClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mDownBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnDownClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnDownClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnDownClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mCancelBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnCancelClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnCancelClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnCancelClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mOKBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnOKClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnOKClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnOKClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mUntilBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    const v0, 0x7f0b01a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mCycleTV:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0b01a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mUnitTV:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0b01a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mUpBtn:Landroid/widget/ImageButton;

    .line 83
    const v0, 0x7f0b01a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mDownBtn:Landroid/widget/ImageButton;

    .line 84
    const v0, 0x7f0b0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mCancelBtn:Landroid/widget/Button;

    .line 85
    const v0, 0x7f0b0117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mOKBtn:Landroid/widget/Button;

    .line 86
    const v0, 0x7f0b01aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mUntilBtn:Landroid/widget/Button;

    .line 87
    return-void
.end method

.method private initViewContent(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    const v0, 0x7f0b003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c00f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mUnitTV:Landroid/widget/TextView;

    const v1, 0x7f0c00aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->setCycleViewContent()V

    .line 93
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->setUntilViewContent()V

    .line 94
    return-void
.end method

.method private setCycleViewContent()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mCycleTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getDaily()Lim/doit/pro/model/RepeaterDaily;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/RepeaterDaily;->getCycle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method private setUntilViewContent()V
    .locals 3

    .prologue
    .line 101
    const v1, 0x7f0c00a8

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "formatText":Ljava/lang/String;
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getEndsOn()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getEndsOn()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mUntilBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method


# virtual methods
.method public setOnSelectDailyFinishListner(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnSelectDailyFinishListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnSelectDailyFinishListner;

    .prologue
    .line 47
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mOnSelectDailyFinishListner:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnSelectDailyFinishListner;

    .line 48
    return-void
.end method

.method public showDialog(Lim/doit/pro/model/Repeater;)V
    .locals 5
    .param p1, "repeater"    # Lim/doit/pro/model/Repeater;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->initData(Lim/doit/pro/model/Repeater;)V

    .line 57
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mDialog:Landroid/app/Dialog;

    .line 58
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03005d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 61
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->initView(Landroid/view/View;)V

    .line 62
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->initViewContent(Landroid/view/View;)V

    .line 63
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->initListener()V

    .line 65
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 66
    return-void
.end method
