.class public Lcom/doomonafireball/betterpickers/timepicker/TimerView;
.super Landroid/widget/LinearLayout;
.source "TimerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;
    }
.end annotation


# instance fields
.field private final mAndroidClockMonoThin:Landroid/graphics/Typeface;

.field private mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

.field private mHoursSeperator:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

.field private mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

.field private mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

.field private mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

.field private mOriginalHoursTypeface:Landroid/graphics/Typeface;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private timerTextClickListener:Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/AndroidClockMono-Thin.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    .line 46
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 47
    return-void
.end method

.method private restyleViews()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursSeperator:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_4

    .line 78
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursSeperator:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 80
    :cond_4
    return-void
.end method

.method private setTimerSelected(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 182
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->clearSelected()V

    .line 183
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-ne p1, v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setSelected(Z)V

    .line 185
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->timerTextClickListener:Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;

    invoke-interface {v0, p1}, Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;->onHoursTensClick(Landroid/view/View;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-ne p1, v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setSelected(Z)V

    .line 188
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->timerTextClickListener:Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;

    invoke-interface {v0, p1}, Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;->onHoursOnesClick(Landroid/view/View;)V

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-ne p1, v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setSelected(Z)V

    .line 191
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->timerTextClickListener:Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;

    invoke-interface {v0, p1}, Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;->onMinutesTensClick(Landroid/view/View;)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-ne p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setSelected(Z)V

    .line 194
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->timerTextClickListener:Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;

    invoke-interface {v0, p1}, Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;->onMinutesOnesClick(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public clearSelected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setSelected(Z)V

    .line 217
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setSelected(Z)V

    .line 218
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setSelected(Z)V

    .line 219
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setSelected(Z)V

    .line 220
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    if-nez p1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->timerTextClickListener:Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0, p1}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->setTimerSelected(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 86
    const v0, 0x7f0b01d4

    invoke-virtual {p0, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    .line 87
    const v0, 0x7f0b01d7

    invoke-virtual {p0, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    .line 88
    const v0, 0x7f0b01d5

    invoke-virtual {p0, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    .line 89
    const v0, 0x7f0b01d8

    invoke-virtual {p0, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    .line 90
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f0b01d6

    invoke-virtual {p0, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursSeperator:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    .line 95
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mOriginalHoursTypeface:Landroid/graphics/Typeface;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 107
    :cond_2
    return-void
.end method

.method public setNextSelected()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {p0, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->onClick(Landroid/view/View;)V

    .line 232
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {p0, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {p0, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->clearSelected()V

    goto :goto_0
.end method

.method public setOnTimerTextClickListener(Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->timerTextClickListener:Lcom/doomonafireball/betterpickers/timepicker/TimerView$OnTimerTextClickListener;

    .line 213
    return-void
.end method

.method public setTheme(I)V
    .locals 3
    .param p1, "themeResId"    # I

    .prologue
    .line 55
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lim/doit/pro/v4/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 61
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->restyleViews()V

    .line 62
    return-void
.end method

.method public setTime(IIII)V
    .locals 7
    .param p1, "hoursTensDigit"    # I
    .param p2, "hoursOnesDigit"    # I
    .param p3, "minutesTensDigit"    # I
    .param p4, "minutesOnesDigit"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 119
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, -0x2

    if-ne p1, v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setVisibility(I)V

    .line 137
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 138
    if-ne p2, v5, :cond_6

    .line 139
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 142
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 150
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 151
    if-ne p3, v5, :cond_7

    .line 152
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_3

    .line 160
    if-ne p4, v5, :cond_8

    .line 161
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_3
    :goto_3
    return-void

    .line 123
    :cond_4
    if-ne p1, v5, :cond_5

    .line 124
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 128
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v4}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setVisibility(I)V

    goto :goto_0

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mOriginalHoursTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 133
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->updatePaddingForBoldDate()V

    .line 134
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v4}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setVisibility(I)V

    goto :goto_0

    .line 144
    :cond_6
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mOriginalHoursTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 147
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->updatePaddingForBoldDate()V

    goto :goto_1

    .line 156
    :cond_7
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
