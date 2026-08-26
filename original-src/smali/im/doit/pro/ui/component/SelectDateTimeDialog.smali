.class public Lim/doit/pro/ui/component/SelectDateTimeDialog;
.super Ljava/lang/Object;
.source "SelectDateTimeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;
    }
.end annotation


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private datePicker:Lim/doit/pro/ui/component/DDatePicker;

.field private defaultDate:Ljava/util/Calendar;

.field private mActivity:Landroid/app/Activity;

.field private mAllday:Z

.field private mContentWrap:Landroid/widget/LinearLayout;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayDatePickerTopbarBtns:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMinDate:Ljava/util/Calendar;

.field private mShowDate:Z

.field private mShowUnset:Z

.field private okBtn:Landroid/widget/Button;

.field private onSelectDateTimeListner:Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;

.field private selectedDate:Ljava/util/Calendar;

.field private unsetBtn:Landroid/widget/Button;

.field private unsetWrap:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mDisplayDatePickerTopbarBtns:Z

    .line 29
    iput-boolean v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mShowDate:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mShowUnset:Z

    .line 49
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mActivity:Landroid/app/Activity;

    .line 50
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectDateTimeDialog;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SelectDateTimeDialog;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->selectedDate:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectDateTimeDialog;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->setOkBtnStatus()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->onSelectDateTimeListner:Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->selectedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mAllday:Z

    return v0
.end method

.method static synthetic access$6(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->defaultDate:Ljava/util/Calendar;

    return-object v0
.end method

.method private addDatePicker()V
    .locals 6

    .prologue
    const v5, 0x7f0b0166

    .line 167
    iget-boolean v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mShowDate:Z

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Lim/doit/pro/ui/component/DDatePicker;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->selectedDate:Ljava/util/Calendar;

    iget-object v3, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->defaultDate:Ljava/util/Calendar;

    iget-object v4, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mMinDate:Ljava/util/Calendar;

    invoke-direct {v0, v1, v2, v3, v4}, Lim/doit/pro/ui/component/DDatePicker;-><init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->datePicker:Lim/doit/pro/ui/component/DDatePicker;

    .line 171
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->datePicker:Lim/doit/pro/ui/component/DDatePicker;

    iget-boolean v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mDisplayDatePickerTopbarBtns:Z

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DDatePicker;->setDisplayTopbarBtns(Z)V

    .line 172
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->datePicker:Lim/doit/pro/ui/component/DDatePicker;

    new-instance v1, Lim/doit/pro/ui/component/SelectDateTimeDialog$5;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SelectDateTimeDialog$5;-><init>(Lim/doit/pro/ui/component/SelectDateTimeDialog;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DDatePicker;->setOnSelectDateListener(Lim/doit/pro/ui/component/DDatePicker$OnSelectDateListener;)V

    .line 187
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mContentWrap:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->datePicker:Lim/doit/pro/ui/component/DDatePicker;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-boolean v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mAllday:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->datePicker:Lim/doit/pro/ui/component/DDatePicker;

    invoke-virtual {v0, v5}, Lim/doit/pro/ui/component/DDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 190
    const/16 v1, 0x8

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->datePicker:Lim/doit/pro/ui/component/DDatePicker;

    invoke-virtual {v0, v5}, Lim/doit/pro/ui/component/DDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 193
    const/4 v1, 0x0

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private addTimePicker()V
    .locals 3

    .prologue
    .line 135
    iget-boolean v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mAllday:Z

    if-eqz v1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->selectedDate:Ljava/util/Calendar;

    if-eqz v1, :cond_1

    .line 141
    new-instance v0, Lim/doit/pro/ui/component/DTimePicker;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->selectedDate:Ljava/util/Calendar;

    invoke-direct {v0, v1, v2}, Lim/doit/pro/ui/component/DTimePicker;-><init>(Landroid/app/Activity;Ljava/util/Calendar;)V

    .line 145
    .local v0, "timePickerView":Lim/doit/pro/ui/component/DTimePicker;
    :goto_1
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mContentWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    new-instance v1, Lim/doit/pro/ui/component/SelectDateTimeDialog$4;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SelectDateTimeDialog$4;-><init>(Lim/doit/pro/ui/component/SelectDateTimeDialog;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DTimePicker;->setOnSelectTimeListener(Lim/doit/pro/ui/component/DTimePicker$OnSelectTimeListener;)V

    goto :goto_0

    .line 143
    .end local v0    # "timePickerView":Lim/doit/pro/ui/component/DTimePicker;
    :cond_1
    new-instance v0, Lim/doit/pro/ui/component/DTimePicker;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->defaultDate:Ljava/util/Calendar;

    invoke-direct {v0, v1, v2}, Lim/doit/pro/ui/component/DTimePicker;-><init>(Landroid/app/Activity;Ljava/util/Calendar;)V

    .restart local v0    # "timePickerView":Lim/doit/pro/ui/component/DTimePicker;
    goto :goto_1
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 201
    :cond_0
    return-void
.end method

.method private setOkBtnStatus()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->selectedDate:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->okBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->okBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public setDefaultDate(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->defaultDate:Ljava/util/Calendar;

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->defaultDate:Ljava/util/Calendar;

    .line 63
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->defaultDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public setDisplayDatePickerTopbarBtns(Z)V
    .locals 0
    .param p1, "display"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mDisplayDatePickerTopbarBtns:Z

    .line 72
    return-void
.end method

.method public setMinDate(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "minDate"    # Ljava/util/Calendar;

    .prologue
    .line 67
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mMinDate:Ljava/util/Calendar;

    .line 68
    return-void
.end method

.method public setOnSelectDateTimeListner(Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;

    .prologue
    .line 45
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->onSelectDateTimeListner:Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;

    .line 46
    return-void
.end method

.method public showDialog(Ljava/util/Calendar;ZZ)V
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "showDate"    # Z
    .param p3, "allday"    # Z

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->showDialog(Ljava/util/Calendar;ZZZ)V

    .line 55
    return-void
.end method

.method public showDialog(Ljava/util/Calendar;ZZZ)V
    .locals 7
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "showDate"    # Z
    .param p3, "allday"    # Z
    .param p4, "showUnset"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 76
    iput-boolean p2, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mShowDate:Z

    .line 77
    iput-boolean p3, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mAllday:Z

    .line 78
    iput-boolean p4, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mShowUnset:Z

    .line 79
    if-nez p1, :cond_0

    .line 80
    iput-object v6, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->selectedDate:Ljava/util/Calendar;

    .line 85
    :goto_0
    new-instance v1, Landroid/app/Dialog;

    iget-object v3, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0d00fc

    invoke-direct {v1, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mDialog:Landroid/app/Dialog;

    .line 86
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030076

    invoke-virtual {v1, v3, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b00b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mContentWrap:Landroid/widget/LinearLayout;

    .line 89
    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->cancelBtn:Landroid/widget/Button;

    .line 90
    const v1, 0x7f0b0168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->unsetWrap:Landroid/widget/LinearLayout;

    .line 91
    const v1, 0x7f0b0169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->unsetBtn:Landroid/widget/Button;

    .line 92
    const v1, 0x7f0b0117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->okBtn:Landroid/widget/Button;

    .line 93
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mContentWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 94
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->unsetWrap:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mShowUnset:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->setOkBtnStatus()V

    .line 96
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 97
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->addDatePicker()V

    .line 98
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->addTimePicker()V

    .line 99
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 100
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->cancelBtn:Landroid/widget/Button;

    new-instance v2, Lim/doit/pro/ui/component/SelectDateTimeDialog$1;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/SelectDateTimeDialog$1;-><init>(Lim/doit/pro/ui/component/SelectDateTimeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->unsetBtn:Landroid/widget/Button;

    new-instance v2, Lim/doit/pro/ui/component/SelectDateTimeDialog$2;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/SelectDateTimeDialog$2;-><init>(Lim/doit/pro/ui/component/SelectDateTimeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->okBtn:Landroid/widget/Button;

    new-instance v2, Lim/doit/pro/ui/component/SelectDateTimeDialog$3;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/SelectDateTimeDialog$3;-><init>(Lim/doit/pro/ui/component/SelectDateTimeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void

    .line 82
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->selectedDate:Ljava/util/Calendar;

    .line 83
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_0

    .line 94
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method
