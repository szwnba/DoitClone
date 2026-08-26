.class public Lcom/doomonafireball/betterpickers/timepicker/TimePicker;
.super Landroid/widget/LinearLayout;
.source "TimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;
    }
.end annotation


# static fields
.field private static final AMPM_NOT_SELECTED:I = 0x0

.field private static final AM_SELECTED:I = 0x2

.field private static final HOURS24_MODE:I = 0x3

.field private static final PM_SELECTED:I = 0x1

.field private static final TIMER_HOUR_ONE:I = 0x2

.field private static final TIMER_HOUR_TEN:I = 0x1

.field private static final TIMER_MINUTE_ONE:I = 0x4

.field private static final TIMER_MINUTE_TEN:I = 0x3

.field private static final TIME_PICKER_SAVED_AMPM:Ljava/lang/String; = "timer_picker_saved_ampm"

.field private static final TIME_PICKER_SAVED_BUFFER_POINTER:Ljava/lang/String; = "timer_picker_saved_buffer_pointer"

.field private static final TIME_PICKER_SAVED_INPUT:Ljava/lang/String; = "timer_picker_saved_input"


# instance fields
.field private mAmPmLabel:Landroid/widget/TextView;

.field private mAmPmState:I

.field private mAmpm:[Ljava/lang/String;

.field private mButtonBackgroundResId:I

.field protected final mContext:Landroid/content/Context;

.field protected mDelete:Landroid/widget/ImageButton;

.field private mDeleteDrawableSrcResId:I

.field protected mDivider:Landroid/view/View;

.field private mDividerColor:I

.field protected mEnteredTime:Lcom/doomonafireball/betterpickers/timepicker/TimerView;

.field protected mInput:[I

.field protected mInputPointer:I

.field protected mInputSize:I

.field private mIs24HoursMode:Z

.field private mKeyBackgroundResId:I

.field protected mLeft:Landroid/widget/Button;

.field private final mNoAmPmLabel:Ljava/lang/String;

.field protected final mNumbers:[Landroid/widget/Button;

.field protected mRight:Landroid/widget/Button;

.field private mSetButton:Landroid/widget/Button;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTheme:I

.field private timerTextClick:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v1, 0x4

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputSize:I

    .line 26
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    .line 27
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    .line 28
    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .line 39
    iput-boolean v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    .line 57
    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mTheme:I

    .line 59
    iput v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->timerTextClick:I

    .line 82
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mContext:Landroid/content/Context;

    .line 83
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    .line 85
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 86
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c026c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNoAmPmLabel:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mTextColor:Landroid/content/res/ColorStateList;

    .line 91
    const v1, 0x7f020148

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mKeyBackgroundResId:I

    .line 92
    const v1, 0x7f020044

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mButtonBackgroundResId:I

    .line 93
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDividerColor:I

    .line 94
    const v1, 0x7f020063

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDeleteDrawableSrcResId:I

    .line 95
    return-void
.end method

.method private addClickedNumber(I)V
    .locals 4
    .param p1, "val"    # I

    .prologue
    .line 401
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 402
    iget v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 405
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .line 406
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 408
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 403
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    aget v3, v3, v0

    aput v3, v1, v2

    .line 402
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private canAddDigits()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 470
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->getEnteredTime()I

    move-result v0

    .line 472
    .local v0, "time":I
    iget-boolean v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-nez v3, :cond_2

    .line 473
    if-lt v0, v1, :cond_1

    const/16 v3, 0xc

    if-gt v0, v3, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 473
    goto :goto_0

    .line 476
    :cond_2
    if-ltz v0, :cond_3

    const/16 v3, 0x17

    if-gt v0, v3, :cond_3

    iget v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    iget v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private enableSetButton()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 673
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mSetButton:Landroid/widget/Button;

    if-nez v3, :cond_0

    .line 693
    :goto_0
    return-void

    .line 678
    :cond_0
    iget v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 679
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 684
    :cond_1
    iget-boolean v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-eqz v3, :cond_3

    .line 687
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->getEnteredTime()I

    move-result v0

    .line 688
    .local v0, "time":I
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mSetButton:Landroid/widget/Button;

    iget v4, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ltz v4, :cond_2

    if-ltz v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 691
    .end local v0    # "time":I
    :cond_3
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mSetButton:Landroid/widget/Button;

    iget v4, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public static get24HourMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 810
    const/4 v0, 0x1

    return v0
.end method

.method private getEnteredTime()I
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private onLeftClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 430
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->getEnteredTime()I

    move-result v0

    .line 431
    .local v0, "time":I
    iget-boolean v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-nez v1, :cond_2

    .line 432
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->canAddDigits()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 434
    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 436
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    .line 441
    :cond_1
    :goto_0
    return-void

    .line 437
    :cond_2
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->canAddDigits()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 439
    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    goto :goto_0
.end method

.method private onRightClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 449
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->getEnteredTime()I

    move-result v0

    .line 450
    .local v0, "time":I
    iget-boolean v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-nez v1, :cond_2

    .line 451
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->canAddDigits()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 453
    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 455
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    .line 462
    :cond_1
    :goto_0
    return-void

    .line 457
    :cond_2
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->canAddDigits()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 459
    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    goto :goto_0
.end method

.method private restyleViews()V
    .locals 5

    .prologue
    .line 153
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_6

    .line 159
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDivider:Landroid/view/View;

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDividerColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 164
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mKeyBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 168
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mKeyBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 172
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mKeyBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mButtonBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 176
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDeleteDrawableSrcResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_4
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mEnteredTime:Lcom/doomonafireball/betterpickers/timepicker/TimerView;

    if-eqz v1, :cond_5

    .line 179
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mEnteredTime:Lcom/doomonafireball/betterpickers/timepicker/TimerView;

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mTheme:I

    invoke-virtual {v1, v2}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->setTheme(I)V

    .line 181
    :cond_5
    return-void

    .line 153
    :cond_6
    aget-object v0, v2, v1

    .line 154
    .local v0, "number":Landroid/widget/Button;
    if-eqz v0, :cond_7

    .line 155
    iget-object v4, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 156
    iget v4, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mKeyBackgroundResId:I

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 153
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setClickedNumber(I)V
    .locals 4
    .param p1, "val"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 411
    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .line 413
    iget v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->timerTextClick:I

    if-ne v0, v2, :cond_1

    .line 414
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    aput p1, v0, v1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->timerTextClick:I

    if-ne v0, v3, :cond_2

    .line 416
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    aput p1, v0, v3

    goto :goto_0

    .line 417
    :cond_2
    iget v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->timerTextClick:I

    if-ne v0, v1, :cond_3

    .line 418
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    aput p1, v0, v2

    goto :goto_0

    .line 419
    :cond_3
    iget v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->timerTextClick:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    goto :goto_0
.end method

.method private setKeyRange(I)V
    .locals 3
    .param p1, "maxKey"    # I

    .prologue
    .line 646
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 649
    return-void

    .line 647
    :cond_0
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    aget-object v2, v1, v0

    if-gt v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 647
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showAmPm()V
    .locals 3

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-nez v0, :cond_0

    .line 381
    iget v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    packed-switch v0, :pswitch_data_0

    .line 398
    :goto_0
    return-void

    .line 383
    :pswitch_0
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNoAmPmLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmpm:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 389
    :pswitch_2
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmpm:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    const/4 v0, 0x3

    iput v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateKeypad()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->showAmPm()V

    .line 320
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->updateLeftRightButtons()V

    .line 321
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->updateTime()V

    .line 323
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->updateNumericKeys()V

    .line 325
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->enableSetButton()V

    .line 327
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->updateDeleteButton()V

    .line 329
    return-void
.end method

.method private updateLeftRightButtons()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 652
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->getEnteredTime()I

    move-result v1

    .line 653
    .local v1, "time":I
    iget-boolean v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-eqz v2, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->canAddDigits()Z

    move-result v0

    .line 655
    .local v0, "enable":Z
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 656
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 667
    .end local v0    # "enable":Z
    :goto_0
    return-void

    .line 659
    :cond_0
    const/16 v2, 0xc

    if-le v1, v2, :cond_1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    :cond_1
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    if-eqz v2, :cond_3

    .line 660
    :cond_2
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 661
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 663
    :cond_3
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 664
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateNumericKeys()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, -0x1

    const/16 v3, 0x9

    .line 483
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->getEnteredTime()I

    move-result v0

    .line 484
    .local v0, "time":I
    iget-boolean v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-eqz v1, :cond_39

    .line 485
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 486
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    if-nez v0, :cond_5

    .line 488
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ne v1, v7, :cond_3

    .line 489
    :cond_2
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 490
    :cond_3
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ne v1, v6, :cond_4

    .line 491
    invoke-direct {p0, v5}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 493
    :cond_4
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 495
    :cond_5
    if-ne v0, v6, :cond_9

    .line 496
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ne v1, v7, :cond_7

    .line 497
    :cond_6
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 498
    :cond_7
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ne v1, v6, :cond_8

    .line 499
    invoke-direct {p0, v5}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 501
    :cond_8
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 503
    :cond_9
    if-ne v0, v7, :cond_d

    .line 504
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-eq v1, v7, :cond_a

    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ne v1, v6, :cond_b

    .line 505
    :cond_a
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 506
    :cond_b
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-nez v1, :cond_c

    .line 507
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 509
    :cond_c
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 511
    :cond_d
    if-gt v0, v5, :cond_e

    .line 512
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 513
    :cond_e
    if-gt v0, v3, :cond_f

    .line 514
    invoke-direct {p0, v5}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 515
    :cond_f
    const/16 v1, 0xa

    if-lt v0, v1, :cond_10

    const/16 v1, 0xf

    if-gt v0, v1, :cond_10

    .line 516
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 517
    :cond_10
    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    const/16 v1, 0x13

    if-gt v0, v1, :cond_11

    .line 518
    invoke-direct {p0, v5}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 519
    :cond_11
    const/16 v1, 0x14

    if-lt v0, v1, :cond_12

    const/16 v1, 0x19

    if-gt v0, v1, :cond_12

    .line 520
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 521
    :cond_12
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_13

    .line 522
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 523
    :cond_13
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_14

    const/16 v1, 0x23

    if-gt v0, v1, :cond_14

    .line 524
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 525
    :cond_14
    const/16 v1, 0x24

    if-lt v0, v1, :cond_15

    const/16 v1, 0x27

    if-gt v0, v1, :cond_15

    .line 526
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 527
    :cond_15
    const/16 v1, 0x28

    if-lt v0, v1, :cond_16

    const/16 v1, 0x2d

    if-gt v0, v1, :cond_16

    .line 528
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 529
    :cond_16
    const/16 v1, 0x2e

    if-lt v0, v1, :cond_17

    const/16 v1, 0x31

    if-gt v0, v1, :cond_17

    .line 530
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 531
    :cond_17
    const/16 v1, 0x32

    if-lt v0, v1, :cond_18

    const/16 v1, 0x37

    if-gt v0, v1, :cond_18

    .line 532
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 533
    :cond_18
    const/16 v1, 0x38

    if-lt v0, v1, :cond_19

    const/16 v1, 0x3b

    if-gt v0, v1, :cond_19

    .line 534
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 535
    :cond_19
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_1a

    const/16 v1, 0x41

    if-gt v0, v1, :cond_1a

    .line 536
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 537
    :cond_1a
    const/16 v1, 0x46

    if-lt v0, v1, :cond_1b

    const/16 v1, 0x4b

    if-gt v0, v1, :cond_1b

    .line 538
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 539
    :cond_1b
    const/16 v1, 0x50

    if-lt v0, v1, :cond_1c

    const/16 v1, 0x55

    if-gt v0, v1, :cond_1c

    .line 540
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 541
    :cond_1c
    const/16 v1, 0x5a

    if-lt v0, v1, :cond_1d

    const/16 v1, 0x5f

    if-gt v0, v1, :cond_1d

    .line 542
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 543
    :cond_1d
    const/16 v1, 0x64

    if-lt v0, v1, :cond_1e

    const/16 v1, 0x69

    if-gt v0, v1, :cond_1e

    .line 544
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 545
    :cond_1e
    const/16 v1, 0x6a

    if-lt v0, v1, :cond_1f

    const/16 v1, 0x6d

    if-gt v0, v1, :cond_1f

    .line 546
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 547
    :cond_1f
    const/16 v1, 0x6e

    if-lt v0, v1, :cond_20

    const/16 v1, 0x73

    if-gt v0, v1, :cond_20

    .line 548
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 549
    :cond_20
    const/16 v1, 0x74

    if-lt v0, v1, :cond_21

    const/16 v1, 0x77

    if-gt v0, v1, :cond_21

    .line 550
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 551
    :cond_21
    const/16 v1, 0x78

    if-lt v0, v1, :cond_22

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_22

    .line 552
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 553
    :cond_22
    const/16 v1, 0x7e

    if-lt v0, v1, :cond_23

    const/16 v1, 0x81

    if-gt v0, v1, :cond_23

    .line 554
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 555
    :cond_23
    const/16 v1, 0x82

    if-lt v0, v1, :cond_24

    const/16 v1, 0x87

    if-gt v0, v1, :cond_24

    .line 556
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 557
    :cond_24
    const/16 v1, 0x88

    if-lt v0, v1, :cond_25

    const/16 v1, 0x8b

    if-gt v0, v1, :cond_25

    .line 558
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 559
    :cond_25
    const/16 v1, 0x8c

    if-lt v0, v1, :cond_26

    const/16 v1, 0x91

    if-gt v0, v1, :cond_26

    .line 560
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 561
    :cond_26
    const/16 v1, 0x92

    if-lt v0, v1, :cond_27

    const/16 v1, 0x95

    if-gt v0, v1, :cond_27

    .line 562
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 563
    :cond_27
    const/16 v1, 0x96

    if-lt v0, v1, :cond_28

    const/16 v1, 0x9b

    if-gt v0, v1, :cond_28

    .line 564
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 565
    :cond_28
    const/16 v1, 0x9c

    if-lt v0, v1, :cond_29

    const/16 v1, 0x9f

    if-gt v0, v1, :cond_29

    .line 566
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 567
    :cond_29
    const/16 v1, 0xa0

    if-lt v0, v1, :cond_2a

    const/16 v1, 0xa5

    if-gt v0, v1, :cond_2a

    .line 568
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 569
    :cond_2a
    const/16 v1, 0xa6

    if-lt v0, v1, :cond_2b

    const/16 v1, 0xa9

    if-gt v0, v1, :cond_2b

    .line 570
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 571
    :cond_2b
    const/16 v1, 0xaa

    if-lt v0, v1, :cond_2c

    const/16 v1, 0xaf

    if-gt v0, v1, :cond_2c

    .line 572
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 573
    :cond_2c
    const/16 v1, 0xb0

    if-lt v0, v1, :cond_2d

    const/16 v1, 0xb3

    if-gt v0, v1, :cond_2d

    .line 574
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 575
    :cond_2d
    const/16 v1, 0xb4

    if-lt v0, v1, :cond_2e

    const/16 v1, 0xb9

    if-gt v0, v1, :cond_2e

    .line 576
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 577
    :cond_2e
    const/16 v1, 0xba

    if-lt v0, v1, :cond_2f

    const/16 v1, 0xbd

    if-gt v0, v1, :cond_2f

    .line 578
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 579
    :cond_2f
    const/16 v1, 0xbe

    if-lt v0, v1, :cond_30

    const/16 v1, 0xc3

    if-gt v0, v1, :cond_30

    .line 580
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 581
    :cond_30
    const/16 v1, 0xc4

    if-lt v0, v1, :cond_31

    const/16 v1, 0xc7

    if-gt v0, v1, :cond_31

    .line 582
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 583
    :cond_31
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_32

    const/16 v1, 0xcd

    if-gt v0, v1, :cond_32

    .line 584
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 585
    :cond_32
    const/16 v1, 0xce

    if-lt v0, v1, :cond_33

    const/16 v1, 0xd1

    if-gt v0, v1, :cond_33

    .line 586
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 587
    :cond_33
    const/16 v1, 0xd2

    if-lt v0, v1, :cond_34

    const/16 v1, 0xd7

    if-gt v0, v1, :cond_34

    .line 588
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 589
    :cond_34
    const/16 v1, 0xd8

    if-lt v0, v1, :cond_35

    const/16 v1, 0xdb

    if-gt v0, v1, :cond_35

    .line 590
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 591
    :cond_35
    const/16 v1, 0xdc

    if-lt v0, v1, :cond_36

    const/16 v1, 0xe1

    if-gt v0, v1, :cond_36

    .line 592
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 593
    :cond_36
    const/16 v1, 0xe2

    if-lt v0, v1, :cond_37

    const/16 v1, 0xe5

    if-gt v0, v1, :cond_37

    .line 594
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 595
    :cond_37
    const/16 v1, 0xe6

    if-lt v0, v1, :cond_38

    const/16 v1, 0xeb

    if-gt v0, v1, :cond_38

    .line 596
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 597
    :cond_38
    const/16 v1, 0xec

    if-lt v0, v1, :cond_0

    .line 598
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 602
    :cond_39
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    if-eqz v1, :cond_3a

    .line 603
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 604
    :cond_3a
    if-nez v0, :cond_3b

    .line 605
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    .line 608
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 610
    :cond_3b
    if-gt v0, v3, :cond_3c

    .line 611
    invoke-direct {p0, v5}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 612
    :cond_3c
    const/16 v1, 0x5f

    if-gt v0, v1, :cond_3d

    .line 613
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 614
    :cond_3d
    const/16 v1, 0x64

    if-lt v0, v1, :cond_3e

    const/16 v1, 0x69

    if-gt v0, v1, :cond_3e

    .line 615
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 616
    :cond_3e
    const/16 v1, 0x6a

    if-lt v0, v1, :cond_3f

    const/16 v1, 0x6d

    if-gt v0, v1, :cond_3f

    .line 617
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 618
    :cond_3f
    const/16 v1, 0x6e

    if-lt v0, v1, :cond_40

    const/16 v1, 0x73

    if-gt v0, v1, :cond_40

    .line 619
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 620
    :cond_40
    const/16 v1, 0x74

    if-lt v0, v1, :cond_41

    const/16 v1, 0x77

    if-gt v0, v1, :cond_41

    .line 621
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 622
    :cond_41
    const/16 v1, 0x78

    if-lt v0, v1, :cond_42

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_42

    .line 623
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 624
    :cond_42
    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 625
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public disableDelete()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 99
    return-void
.end method

.method protected doOnClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 261
    const v2, 0x7f0b0009

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 263
    .local v1, "val":Ljava/lang/Integer;
    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->timerTextClick:I

    if-lez v2, :cond_1

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setClickedNumber(I)V

    .line 284
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->updateKeypad()V

    .line 286
    iput v5, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->timerTextClick:I

    .line 287
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mEnteredTime:Lcom/doomonafireball/betterpickers/timepicker/TimerView;

    invoke-virtual {v2}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->setNextSelected()V

    .line 288
    return-void

    .line 265
    :cond_1
    if-eqz v1, :cond_2

    .line 266
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_5

    .line 270
    iget-boolean v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    if-eqz v2, :cond_3

    .line 271
    iput v5, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    goto :goto_0

    .line 272
    :cond_3
    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ltz v2, :cond_0

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-lt v0, v2, :cond_4

    .line 276
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    iget v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    aput v5, v2, v3

    .line 277
    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    goto :goto_0

    .line 274
    :cond_4
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    iget-object v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    .end local v0    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    if-ne p1, v2, :cond_6

    .line 280
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->onLeftClicked()V

    goto :goto_0

    .line 281
    :cond_6
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->onRightClicked()V

    goto :goto_0
.end method

.method public getHours()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xc

    .line 711
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-int/lit8 v3, v3, 0xa

    iget-object v4, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int v0, v3, v4

    .line 712
    .local v0, "hours":I
    if-ne v0, v1, :cond_0

    .line 713
    iget v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    packed-switch v3, :pswitch_data_0

    .line 724
    :cond_0
    iget v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    :goto_0
    add-int/2addr v1, v0

    :goto_1
    :pswitch_0
    return v1

    :pswitch_1
    move v1, v2

    .line 717
    goto :goto_1

    :pswitch_2
    move v1, v0

    .line 719
    goto :goto_1

    :cond_1
    move v1, v2

    .line 724
    goto :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f0300af

    return v0
.end method

.method public getMinutes()I
    .locals 3

    .prologue
    .line 733
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getTime()I
    .locals 3

    .prologue
    .line 820
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0xe10

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x258

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 256
    invoke-virtual {p0, p1}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->doOnClick(Landroid/view/View;)V

    .line 257
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->updateDeleteButton()V

    .line 258
    return-void
.end method

.method protected onFinishInflate()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const v12, 0x7f0b01ce

    const v11, 0x7f0b01cd

    const v9, 0x7f0b01cc

    const/4 v10, 0x0

    .line 185
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 187
    const v6, 0x7f0b01da

    invoke-virtual {p0, v6}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 188
    .local v2, "v1":Landroid/view/View;
    const v6, 0x7f0b01db

    invoke-virtual {p0, v6}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 189
    .local v3, "v2":Landroid/view/View;
    const v6, 0x7f0b01dc

    invoke-virtual {p0, v6}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 190
    .local v4, "v3":Landroid/view/View;
    const v6, 0x7f0b01dd

    invoke-virtual {p0, v6}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 192
    .local v5, "v4":Landroid/view/View;
    const v6, 0x7f0b01d3

    invoke-virtual {p0, v6}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/doomonafireball/betterpickers/timepicker/TimerView;

    iput-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mEnteredTime:Lcom/doomonafireball/betterpickers/timepicker/TimerView;

    .line 193
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mEnteredTime:Lcom/doomonafireball/betterpickers/timepicker/TimerView;

    invoke-virtual {v6, p0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->setOnTimerTextClickListener(Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;)V

    .line 195
    const v6, 0x7f0b01d9

    invoke-virtual {p0, v6}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    .line 196
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 199
    iget-object v7, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v13

    .line 200
    iget-object v7, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x2

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 201
    iget-object v7, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x3

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 203
    iget-object v7, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x4

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 204
    iget-object v7, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x5

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 205
    iget-object v7, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x6

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 207
    iget-object v7, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x7

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 208
    iget-object v7, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 209
    iget-object v7, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/16 v8, 0x9

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 211
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    .line 212
    iget-object v7, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v10

    .line 213
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    .line 214
    invoke-virtual {p0, v10}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setLeftRightEnabled(Z)V

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v6, 0xa

    if-lt v0, v6, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->updateTime()V

    .line 223
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 224
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v6, Ljava/text/DateFormatSymbols;

    invoke-direct {v6}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v6}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmpm:[Ljava/lang/String;

    .line 226
    iget-boolean v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-eqz v6, :cond_1

    .line 227
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    const v7, 0x7f0c026e

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    const v7, 0x7f0c026f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :goto_1
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v6, 0x7f0b01c3

    invoke-virtual {p0, v6}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    .line 236
    iput v10, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    .line 237
    const v6, 0x7f0b0082

    invoke-virtual {p0, v6}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDivider:Landroid/view/View;

    .line 239
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->restyleViews()V

    .line 240
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->updateKeypad()V

    .line 241
    return-void

    .line 217
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    aget-object v6, v6, v0

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    aget-object v6, v6, v0

    const-string v7, "%d"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    aget-object v6, v6, v0

    const v7, 0x7f0b0009

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 230
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    iget-object v7, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmpm:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    iget-object v7, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmpm:[Ljava/lang/String;

    aget-object v7, v7, v13

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onHoursOnesClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    .line 862
    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->timerTextClick:I

    .line 863
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->getHours()I

    move-result v1

    div-int/lit8 v0, v1, 0xa

    .line 864
    .local v0, "hourTen":I
    if-ge v0, v2, :cond_0

    .line 865
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    .line 869
    :goto_0
    return-void

    .line 867
    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0
.end method

.method public onHoursTensClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 851
    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->timerTextClick:I

    .line 852
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->getHours()I

    move-result v1

    rem-int/lit8 v0, v1, 0xa

    .line 853
    .local v0, "hourOne":I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 854
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    .line 858
    :goto_0
    return-void

    .line 856
    :cond_0
    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 293
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 296
    iput v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    .line 297
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->reset()V

    .line 298
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->updateKeypad()V

    .line 299
    const/4 v0, 0x1

    .line 301
    :cond_0
    return v0
.end method

.method public onMinutesOnesClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 879
    const/4 v0, 0x4

    iput v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->timerTextClick:I

    .line 880
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    .line 881
    return-void
.end method

.method public onMinutesTensClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 873
    const/4 v0, 0x3

    iput v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->timerTextClick:I

    .line 874
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    .line 875
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 748
    instance-of v1, p1, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;

    if-nez v1, :cond_0

    .line 749
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 764
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 753
    check-cast v0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;

    .line 754
    .local v0, "savedState":Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;
    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 756
    iget v1, v0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;->mInputPointer:I

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .line 757
    iget-object v1, v0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;->mInput:[I

    iput-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    .line 758
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    if-nez v1, :cond_1

    .line 759
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    .line 760
    const/4 v1, -0x1

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .line 762
    :cond_1
    iget v1, v0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;->mAmPmState:I

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    .line 763
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->updateKeypad()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 738
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 739
    .local v0, "parcel":Landroid/os/Parcelable;
    new-instance v1, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;

    invoke-direct {v1, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 740
    .local v1, "state":Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    iput-object v2, v1, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;->mInput:[I

    .line 741
    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mAmPmState:I

    iput v2, v1, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;->mAmPmState:I

    .line 742
    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    iput v2, v1, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;->mInputPointer:I

    .line 743
    return-object v1
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputSize:I

    if-lt v0, v1, :cond_0

    .line 311
    const/4 v1, -0x1

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .line 312
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->updateTime()V

    .line 313
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public restoreEntryState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1, "inState"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 828
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 829
    .local v1, "input":[I
    if-eqz v1, :cond_0

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputSize:I

    array-length v3, v1

    if-ne v2, v3, :cond_0

    .line 830
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputSize:I

    if-lt v0, v2, :cond_1

    .line 836
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->updateTime()V

    .line 838
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 831
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    aget v3, v1, v0

    aput v3, v2, v0

    .line 832
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    aget v2, v2, v0

    if-eqz v2, :cond_2

    .line 833
    iput v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .line 830
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public saveEntryState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 824
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 825
    return-void
.end method

.method protected setLeftRightEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 841
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 842
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 843
    if-nez p1, :cond_0

    .line 844
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 845
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 847
    :cond_0
    return-void
.end method

.method public setSetButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "b"    # Landroid/widget/Button;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mSetButton:Landroid/widget/Button;

    .line 702
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->enableSetButton()V

    .line 703
    return-void
.end method

.method public setTheme(I)V
    .locals 3
    .param p1, "themeResId"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mTheme:I

    .line 136
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mTheme:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lim/doit/pro/v4/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mTextColor:Landroid/content/res/ColorStateList;

    .line 140
    const/4 v1, 0x4

    .line 141
    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mKeyBackgroundResId:I

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mKeyBackgroundResId:I

    .line 142
    const/4 v1, 0x5

    .line 143
    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mButtonBackgroundResId:I

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mButtonBackgroundResId:I

    .line 144
    const/4 v1, 0x7

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDividerColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDividerColor:I

    .line 145
    const/4 v1, 0x2

    .line 146
    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDeleteDrawableSrcResId:I

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDeleteDrawableSrcResId:I

    .line 149
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->restyleViews()V

    .line 150
    return-void
.end method

.method public setTime(II)V
    .locals 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    const/16 v4, 0x9

    .line 102
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 123
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    .local v0, "hour1":I
    const/4 v1, 0x0

    .local v1, "hour2":I
    const/4 v2, 0x0

    .local v2, "minute1":I
    const/4 v3, 0x0

    .line 106
    .local v3, "minute2":I
    if-le p1, v4, :cond_1

    .line 107
    div-int/lit8 v0, p1, 0xa

    .line 108
    rem-int/lit8 v1, p1, 0xa

    .line 112
    :goto_1
    if-le p2, v4, :cond_2

    .line 113
    div-int/lit8 v2, p2, 0xa

    .line 114
    rem-int/lit8 v3, p2, 0xa

    .line 118
    :goto_2
    invoke-direct {p0, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 119
    invoke-direct {p0, v1}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 120
    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 121
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 122
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->updateKeypad()V

    goto :goto_0

    .line 110
    :cond_1
    move v1, p1

    goto :goto_1

    .line 116
    :cond_2
    move v3, p2

    goto :goto_2
.end method

.method public updateDeleteButton()V
    .locals 3

    .prologue
    .line 247
    iget v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 248
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 251
    :cond_0
    return-void

    .line 247
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateTime()V
    .locals 14

    .prologue
    const/16 v10, 0x9

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v7, -0x1

    .line 344
    const/4 v2, -0x1

    .line 345
    .local v2, "hours1":I
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->getEnteredTime()I

    move-result v6

    .line 348
    .local v6, "time":I
    iget v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-le v8, v7, :cond_7

    .line 350
    iget v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ltz v8, :cond_2

    .line 351
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    iget v9, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    aget v0, v8, v9

    .line 352
    .local v0, "digit":I
    iget-boolean v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-eqz v8, :cond_0

    if-lt v0, v11, :cond_0

    if-le v0, v10, :cond_1

    .line 353
    :cond_0
    iget-boolean v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-nez v8, :cond_2

    if-lt v0, v12, :cond_2

    if-gt v0, v10, :cond_2

    .line 354
    :cond_1
    const/4 v2, -0x2

    .line 359
    .end local v0    # "digit":I
    :cond_2
    iget v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-lez v8, :cond_5

    iget v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ge v8, v11, :cond_5

    const/4 v8, -0x2

    if-eq v2, v8, :cond_5

    .line 360
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    iget v9, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    aget v8, v8, v9

    mul-int/lit8 v8, v8, 0xa

    iget-object v9, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    iget v10, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    add-int v1, v8, v9

    .line 361
    .local v1, "digits":I
    iget-boolean v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-eqz v8, :cond_3

    const/16 v8, 0x18

    if-lt v1, v8, :cond_3

    const/16 v8, 0x19

    if-le v1, v8, :cond_4

    .line 362
    :cond_3
    iget-boolean v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-nez v8, :cond_5

    const/16 v8, 0xd

    if-lt v1, v8, :cond_5

    const/16 v8, 0xf

    if-gt v1, v8, :cond_5

    .line 363
    :cond_4
    const/4 v2, -0x2

    .line 367
    .end local v1    # "digits":I
    :cond_5
    iget v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ne v8, v11, :cond_6

    .line 368
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    aget v2, v8, v11

    .line 373
    :cond_6
    :goto_0
    iget v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ge v8, v12, :cond_8

    move v3, v7

    .line 374
    .local v3, "hours2":I
    :goto_1
    iget v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ge v8, v13, :cond_9

    move v4, v7

    .line 375
    .local v4, "minutes1":I
    :goto_2
    iget v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-gez v8, :cond_a

    move v5, v7

    .line 376
    .local v5, "minutes2":I
    :goto_3
    iget-object v7, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mEnteredTime:Lcom/doomonafireball/betterpickers/timepicker/TimerView;

    invoke-virtual {v7, v2, v3, v4, v5}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->setTime(IIII)V

    .line 377
    return-void

    .line 371
    .end local v3    # "hours2":I
    .end local v4    # "minutes1":I
    .end local v5    # "minutes2":I
    :cond_7
    const/4 v2, -0x1

    goto :goto_0

    .line 373
    :cond_8
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    aget v3, v8, v12

    goto :goto_1

    .line 374
    .restart local v3    # "hours2":I
    :cond_9
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    aget v4, v8, v13

    goto :goto_2

    .line 375
    .restart local v4    # "minutes1":I
    :cond_a
    iget-object v7, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v8, 0x0

    aget v5, v7, v8

    goto :goto_3
.end method
