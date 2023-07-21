import * as React from 'react';

import { Button } from '@/components/ui/button';
import {
	Card,
	CardContent,
	CardFooter,
	CardHeader,
	CardTitle,
	CardDescription,
} from '@/components/ui/card';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import {
	Select,
	SelectContent,
	SelectItem,
	SelectTrigger,
	SelectValue,
} from '@/components/ui/select';

import Image from 'next/image';
import eggImage from '@/public/eggs.jpg';
export default function CardTest() {
	return (
		<Card className='w-[350px]'>
			<CardContent className='pt-4'>
				<Image src={eggImage} alt='eggs' width={350} height={350} />
				<div className='flex flex-col pt-4 space-y-2'>
					<CardTitle>Food A</CardTitle>
					<CardDescription>It&apos;s an egg</CardDescription>
				</div>
			</CardContent>
			<CardFooter className='flex justify-between'>
				<Button variant='outline'>Cancel</Button>
				<Button>Deploy</Button>
			</CardFooter>
		</Card>
	);
}
